package com.intelligrape.prashant.linksharing

abstract class Resource {
    User createdBy
    String title
    String description
    Date dateCreated
    Date lastUpdated

    static hasMany = [readingItems: ReadingItem, resourceRatings: ResourceRating]
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
                addToReadingItems(user: it.user, resource: this, isRead: true)
            else {
                addToReadingItems(user: it.user, resource: this, isRead: false)
            }
        }
    }
}
