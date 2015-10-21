package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeTool {

  Integer id
  Integer ent
  Integer opt

  static mapping = {
    table '`recipe_tool`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

/*
CREATE TABLE ZRECIPETOOL ( 
Z_PK INTEGER PRIMARY KEY, 
Z_ENT INTEGER, 
Z_OPT INTEGER, 
ZRECIPE INTEGER, 
ZTOOL INTEGER 
);

CREATE TABLE ZRECIPETOOL ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZRECIPE INTEGER, ZTOOL INTEGER );
CREATE INDEX ZRECIPETOOL_ZRECIPE_INDEX ON ZRECIPETOOL (ZRECIPE);
CREATE INDEX ZRECIPETOOL_ZTOOL_INDEX ON ZRECIPETOOL (ZTOOL);
*/
