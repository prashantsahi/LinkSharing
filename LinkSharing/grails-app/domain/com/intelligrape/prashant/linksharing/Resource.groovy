package com.intelligrape.prashant.linksharing

import bootcamp.Seriousness

import javax.xml.soap.Text

abstract class Resource {
    User createdBy
    String title
    String description
    Date dateCreated
    Date lastUpdated

    static hasMany = [readingitems: ReadingItem, resourceratings: ResourceRating]
    static belongsTo = [topic: Topic]
    static constraints = {
        description maxSize: 1024
        description unique: true
    }
    static mapping = {
        //tablePerHierarchy false
        title sqlType: 'text'
    }

    def afterInsert = {
        topic.subscriptions.each {
            if (it.user == createdBy)
                addToReadingitems(user: it.user, resource: this, isRead: true)
            else {
                addToReadingitems(user: it.user, resource: this, isRead: false)
            }
        }
    }
}
