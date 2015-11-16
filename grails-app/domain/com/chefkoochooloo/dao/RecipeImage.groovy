package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeImage {

  static belongsTo = Recipe

  Integer id
  Integer presentation
  String alt
  String url
  Recipe recipe

  static mapping = {
    table '`recipe_image`'
    url length: 500 // determine how big a url can be
    cache true
    version false
  }

  static constraints = {
    url size: 1..500, blank: false
    presentation nullable: true
    alt nullable: true
  }
}
