package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Flag {
    
  Integer id
  Integer ent
  Integer opt
  String name 

  static mapping = {
    table '`flag`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}

/*
CREATE TABLE ZFLAG ( 
Z_PK INTEGER PRIMARY KEY, 
Z_ENT INTEGER, 
Z_OPT INTEGER, 
ZNAME VARCHAR );


CREATE TABLE ZFLAG ( Z_PK INTEGER PRIMARY KEY, Z_ENT INTEGER, Z_OPT INTEGER, ZNAME VARCHAR );
*/
