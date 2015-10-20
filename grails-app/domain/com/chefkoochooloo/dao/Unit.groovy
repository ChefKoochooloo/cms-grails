package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Unit{

  Integer id
  Integer ent
  Integer opt
  String name


  static mapping = {
    table '`unit`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

