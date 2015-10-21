package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Recipe {
    
  static hasMany = [tools: Tool, flags: Flag]

  Integer id
  Integer ent
  Integer opt
  String name 
  String presentation
  String time

  static mapping = {
    table '`recipe`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}


/*
CREATE TABLE ZRECIPE ( 
Z_PK INTEGER PRIMARY KEY, 
Z_ENT INTEGER, 
Z_OPT INTEGER, 
ZCOUNTRY INTEGER, 
ZTYPE INTEGER, 
ZUSER INTEGER, 
ZNAME VARCHAR, 
ZPRESENTATION VARCHAR, 
ZTIME VARCHAR );

CREATE TABLE ZRECIPE ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZCOUNTRY INTEGER, ZTYPE INTEGER, ZUSER INTEGER, ZNAME VARCHAR, ZPRESENTATION VARCHAR, ZTIME VARCHAR );
CREATE INDEX ZRECIPE_ZCOUNTRY_INDEX ON ZRECIPE (ZCOUNTRY);
CREATE INDEX ZRECIPE_ZTYPE_INDEX ON ZRECIPE (ZTYPE);
CREATE INDEX ZRECIPE_ZUSER_INDEX ON ZRECIPE (ZUSER);
 */