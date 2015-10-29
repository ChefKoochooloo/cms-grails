package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeTag {

  static belongsTo = Recipe

  Integer id
  Tag tag
  Recipe recipe

  static mapping = {
    table '`recipe_tag`'
    cache true
    version false
  }

  static constraints = {
    recipe blank: false
    tag blank: false
  }
}
