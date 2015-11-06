
package com.sample.dao

import groovy.transform.ToString
import grails.util.Holders

import ikakara.simplemarshaller.annotation.SimpleMarshaller
import ikakara.awsinstance.util.FileUtil

@SimpleMarshaller(includes = ["id", "name", "calories", "description", "urlImg", "ingredients"])
@ToString(includePackage=false, includeNames=true, excludes="awsStorageService, img_url, dateCreated, lastUpdated, ingredients, availableImages, imgFile")
class Drink {
  //static hasMany = [ingredients: Ingredient]
  static transients = ["ingredients","availableImages","imgFile"]

  static public final String DRINKS_FOLDER = 'drinks'
  static public final String ASSETS_PATH = 'assets/'
  static public final String PATH_SEPARATOR = '/'
  static public final Integer DEFAULT_MAX_CALORIES =  10000;

  def awsStorageService

  Integer id
  String name
  Float calories
  String description
  String img_url = ''

  Date dateCreated
  Date lastUpdated

  // transient
  List<Ingredient> ingredients
  List availableImages
  def imgFile = null

  static mapping = {
    table '`drink`'
    dateCreated column: '`created_time`'
    lastUpdated column: '`updated_time`'
    cache true
    version false
  }

  static constraints = {
    name blank: false
    calories blank: false
    description blank: true
    img_url blank: true
    imgFile validator: { file, obj ->
      println "IN VALIDATOR imgFile ${file} ${obj}"
      if(file && obj) {
        if(file.isEmpty() || file.getSize() == 0) {
          return ['invalidfile', file.getOriginalFilename()]
        } else if (file.getSize() > FileUtil.IMAGE_SIZE_LIMIT) {
          return ['invalidfile', file.getSize()]
        } else {
          def (isValid, extension) = FileUtil.getValidExtension(file.getOriginalFilename(), FileUtil.ACCEPTABLE_IMAGEFILE_TYPES)
          if(!isValid) {
            return ['invalidtype', extension]
          }
        }
      }
    }
  }

  public Float computeCalories() {
    Float total = ingredients?.sum { it.computeCalories(it.calorie) }
    return total;
  }

  private def init_img_url() {
    if(imgFile) {
      img_url = ASSETS_PATH + imgFile.getOriginalFilename()
    }
  }

  private def save_imgFile() {
    if(imgFile) {
      def fullKey = id + PATH_SEPARATOR + img_url;

      if (awsStorageService.putPublicBytes(DRINKS_FOLDER, fullKey, imgFile.getBytes(), imgFile.getContentType(), [date:(new Date()).toString()])) {
        def uploadedFullFileUrl = awsStorageService.getPublicObjectURL(DRINKS_FOLDER, fullKey)
        log.info("Drink: Uploaded full size image: ${uploadedFullFileUrl}")
      } else {
        log.error("save_imgFile failed: ${fullKey} ${img_url}")
      }
    }
  }

  private def checkFieldsForNull() {
    if(description == null) {
      description = ''
    }
    if(img_url == null) {
      img_url = ''
    }
  }

  def afterDelete() {
    println "Drink afterDelete ${id}"
    def list = getSiteAll()
    for(obj in list) {
      // strip path from key
      def item = obj.key.substring(obj.key.indexOf("/") + 1)
      println "Drink afterDelete removing from S3 ... ${item}"
      awsStorageService.deletePublicObject(DRINKS_FOLDER, "${item}")
    }
  }

  def beforeInsert() {
    checkFieldsForNull();
    init_img_url();
    println "Drink beforeInsert ${id}: ${img_url}"
  }

  def afterInsert() {
    println "Drink afterInsert ${id}"
    save_imgFile();
  }

  def beforeUpdate() {
    checkFieldsForNull();
    init_img_url();
    println "Drink beforeUpdate ${id}: ${img_url}"
  }

  def afterUpdate() {
    println "Drink afterUpdate ${id}"
    save_imgFile();
  }

  String absoluteUrl(String path = null) {
    return "${awsStorageService.getPublicBucketHost()}/" + path
  }

  String getUrlImg() {
    if(img_url) {
      return absoluteUrl("${DRINKS_FOLDER}/${id}/${img_url}")
    }
    return ''
  }

  List getSiteAll() {
    return awsStorageService.getPublicObjectList(DRINKS_FOLDER, "${id}")?.getObjectSummaries()
  }

  List getAssets() {
    return awsStorageService.getPublicObjectList(DRINKS_FOLDER, "${id}/assets")?.getObjectSummaries()
  }

  List getAvailableImages() {
    if(!availableImages) {
      availableImages = []
      def list = getAssets()

      for(obj in list) {
        println obj.key
        if(FileUtil.isValidExtension(obj.key, FileUtil.ACCEPTABLE_IMAGEFILE_TYPES)) {
          def item = obj.key.substring(obj.key.lastIndexOf("/") + 1)
          availableImages.add(ASSETS_PATH + item)
        }
      }
    }
    return availableImages;
  }

  List<Ingredient> findAllIngredients() {

    List<Ingredient> listIngredient = []

    String query = """
SELECT b.drink_id, b.name, b.quantity_amount, b.quantity_unit
FROM drink AS a, ingredient AS b WHERE a.id=b.drink_id AND a.id = :id
"""

    def list = new Ingredient()
    .domainClass
    .grailsApplication
    .mainContext
    .sessionFactory
    .currentSession
    .createSQLQuery(query)
    .setInteger('id', id)
    .list()

    for(def row in list) {
      def ingredient = new Ingredient()
      ingredient.drink_id = row[0]
      ingredient.name = row[1]
      ingredient.quantity.amount = row[2]
      ingredient.quantity.unit = row[3]
      listIngredient.add(ingredient)
    }

    return listIngredient
  }
}
