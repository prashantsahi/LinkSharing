package com.intelligrape.prashant.linksharing

import bootcamp.Seriousness
import bootcamp.Visibility

class Topic {
    String name
    Date dateCreated
    Date lastUpdated

    Visibility visibility

    static belongsTo = [createdBy: User]
    static hasMany = [subscriptions: Subscription, resources: Resource]
    static constraints = {
        name unique: 'createdBy'
    }

    def afterInsert={
          addToSubscriptions(user: createdBy, topic: this, seriousness: Seriousness.Serious)
    }
}
