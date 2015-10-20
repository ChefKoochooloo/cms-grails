package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class CountryFact {

  Integer id
  Integer ent
  Integer opt
  Integer country
  String fact
  Integer country_id

  static mapping = {
    table '`country_fact`'
    cache true
    version false
  }

  static constraints = {
    ent blank: true
    opt blank: true
  }
}
