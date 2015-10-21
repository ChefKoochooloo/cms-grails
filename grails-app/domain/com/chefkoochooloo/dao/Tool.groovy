package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Tool {
    
  static hasmany = [recipes: Recipe]
  static belongsTo = Recipe

  Integer id
  Integer ent
  Integer opt
  String name
  String url

  static mapping = {
    table '`tool`'
    cache true
    version false
  }

  static constraints = {
      ent blank: true
      opt blank: true
  }
}

/*
CREATE TABLE ZTOOL ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZNAME VARCHAR, ZURL VARCHAR );

*/
