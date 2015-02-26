package com.intelligrape.prashant.linksharing

import javax.xml.soap.Text

abstract class Resource {
    User createdBy
    String description
    Date dateCreated
    Date lastUpdated

    static hasMany = [readingitems:ReadingItem,resourceratings:ResourceRating]
    static belongsTo=[topic:Topic]
    static constraints = {
        description maxSize: 1024
        description unique:true
    }
    static  mapping = {tablePerHierarchy false
    description sqlType: 'text'
    }
}
