package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Country {

  static hasMany = [charities: CountryCharity, facts: CountryFact, recipes: Recipe]

  Integer id
  Integer population
  String capital
  String code
  String cover_url
  String flag_url
  String language
  String name
  String wish

  static mapping = {
    table '`country`'
    cover_url length: 500 // determine how big a url can be
    flag_url length: 500  // determine how big a url can be
    cache true
    version false
  }

  static constraints = {
    name blank: false
    cover_url size: 1..500
    flag_url size: 1..500
  }
}
