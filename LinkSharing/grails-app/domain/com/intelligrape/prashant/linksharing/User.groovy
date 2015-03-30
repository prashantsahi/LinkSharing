package com.intelligrape.prashant.linksharing

class User {
    String email
    String username
    String password
    String firstName
    String lastName
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
    String photoPath

    static hasMany = [subscriptions: Subscription, resources: Resource, readingitems: ReadingItem, resourceratings: ResourceRating, topics: Topic]
    static constraints = {

        photoPath nullable: true
        admin nullable: true
        active nullable: true
        username unique: true
        email(unique: true, blank: false, email: true)
        password(size: 5..15, blank: false)
        lastName(validator: { val, obj ->
            if (val?.equals(obj.firstName)) {
                return false
            }
        })
    }
}
