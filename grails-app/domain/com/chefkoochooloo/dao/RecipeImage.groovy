package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class RecipeImage {

  Integer id
  Integer ent
  Integer opt
  Integer presentation
  String alt
  String url

  static mapping = {
    table '`recipe_image`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

/*
CREATE TABLE "ZRECIPEIMAGE" (
	`Z_PK`	INTEGER,
	`Z_ENT`	INTEGER,
	`Z_OPT`	INTEGER,
	`ZPRESENTATION`	INTEGER,
	`ZRECIPE`	INTEGER,
	`ZALT`	VARCHAR,
	`ZURL`	VARCHAR,
	PRIMARY KEY(Z_PK)
);
CREATE INDEX ZRECIPEIMAGE_ZRECIPE_INDEX ON ZRECIPEIMAGE (ZRECIPE)

*/
