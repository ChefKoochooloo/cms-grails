package com.chefkoochooloo.dao

import groovy.transform.ToString

@ToString(includePackage=false, includeNames=true, excludes="")
class Tool {

  static hasMany = [likes: LikeTool]

  Integer id
  String name
  String url

  static mapping = {
    table '`tool`'
    cache true
    version false
  }

  static constraints = {
    name blank: false
  }
}
