package com.intelligrape.prashant.linksharing

class User {
    static transients = ['springSecurityService']
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
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static hasMany = [subscriptions: Subscription, resources: Resource, readingitems: ReadingItem, resourceratings: ResourceRating, topics: Topic]

    transient springSecurityService

    static constraints = {
         accountExpired nullable:true
         accountLocked nullable:true
         passwordExpired nullable:true
        photoPath nullable: true
        admin nullable: true
        active nullable: true
        username blank: false, unique: true
        email(unique: true, blank: false, email: true)
        password(blank: false)
        lastName(validator: { val, obj ->
            if (val?.equals(obj.firstName)) {
                return false
            }
        })
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role }
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }
}
