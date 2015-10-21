package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeType {

  Integer id
  Integer ent
  Integer opt
  String name 
  String presentation
  String time

  static mapping = {
    table '`recipe_type`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}
