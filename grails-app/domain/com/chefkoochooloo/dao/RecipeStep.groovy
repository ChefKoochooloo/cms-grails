package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeStep {

  Integer id
  Integer ent
  Integer opt
  Integer order
  Integer type
  String label

  static mapping = {
    table '`recipe_step`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

/*
CREATE TABLE ZRECIPESTEP ( 
Z_PK INTEGER PRIMARY KEY, 
Z_ENT INTEGER, 
Z_OPT INTEGER, 
ZORDER INTEGER, 
ZTYPE INTEGER, 
ZRECIPE INTEGER, 
ZLABEL VARCHAR );

CREATE TABLE ZRECIPESTEP ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZORDER INTEGER, ZTYPE INTEGER, ZRECIPE INTEGER, ZLABEL VARCHAR );
CREATE INDEX ZRECIPESTEP_ZRECIPE_INDEX ON ZRECIPESTEP (ZRECIPE);
*/