package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeStep implements Serializable {

  static belongsTo = Recipe

  Integer step
  Integer type
  String label
  Recipe recipe

  static mapping = {
    table '`recipe_step`'
    id composite: ['recipe', 'step']
    label length: 500 // determine how big a label can be
    cache true
    version false
  }

  static constraints = {
    type min: 0, max: 1
    label size: 1..500, blank: false
  }
}
