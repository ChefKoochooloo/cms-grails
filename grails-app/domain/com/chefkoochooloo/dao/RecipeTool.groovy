package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeTool {

  static belongsTo = Recipe

  Integer id
  Tool tool
  Recipe recipe

  static mapping = {
    table '`recipe_tool`'
    cache true
    version false
  }

  static constraints = {
    recipe blank: false
    tool blank: false
  }
}
