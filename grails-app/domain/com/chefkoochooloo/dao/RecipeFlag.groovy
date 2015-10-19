package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeFlag {
    
  Integer id
  Integer ent

  static mapping = {
    table '`recipe_flag`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

/*
CREATE TABLE ZRECIPEFLAG ( 
Z_PK INTEGER PRIMARY KEY, 
Z_ENT INTEGER, 
Z_OPT INTEGER, 
ZFLAG INTEGER, 
ZRECIPE INTEGER 
);
 
CREATE TABLE ZRECIPEFLAG ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZFLAG INTEGER, ZRECIPE INTEGER );
CREATE INDEX ZRECIPEFLAG_ZFLAG_INDEX ON ZRECIPEFLAG (ZFLAG);
CREATE INDEX ZRECIPEFLAG_ZRECIPE_INDEX ON ZRECIPEFLAG (ZRECIPE);
*/