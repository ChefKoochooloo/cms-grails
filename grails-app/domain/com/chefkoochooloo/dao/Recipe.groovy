package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Recipe {

  static belongsTo = Country
  static hasMany = [tools: RecipeTool, tags: RecipeTag, ingredients: RecipeIngredient, images: RecipeImage, steps: RecipeStep, likes: LikeRecipe]

  Integer id
  String name
  String presentation
  String time // TBD: this should be a Date
  User   user
  Country country

  static mapping = {
    table '`recipe`'
    cache true
    version false
  }

  static constraints = {
    user nullable: true
    name blank: false
    presentation size: 1..500
  }
}
