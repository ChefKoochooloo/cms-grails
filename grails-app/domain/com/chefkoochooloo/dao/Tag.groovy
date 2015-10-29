package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Tag {

  static hasMany = [recipes: RecipeTag]

  Integer id
  String name

  static mapping = {
    table '`tag`'
    cache true
    version false
  }

  static constraints = {
    name blank: false
  }
}
