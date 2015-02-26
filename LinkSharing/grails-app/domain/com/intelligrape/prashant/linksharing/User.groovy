package com.intelligrape.prashant.linksharing

class User
{
    String email
    String username
    String password
    String firstName
    String lastName
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
    Byte[] photo
    static transients =['confirmPassword']


    static hasMany = [subscriptions:Subscription,resources:Resource,readingitems:ReadingItem,resourceratings:ResourceRating,topics:Topic]
    static constraints = {
        photo nullable: true
        email(unique: true,blank: false,nullable: false, email: true)
        password(size: 5..15, blank: false)
        lastName(validator: {val,obj->
            if(val?.equals(obj.firstName)){
                return false
            }
        })
        confirmPassword(validator: {val,obj->
            if(val?.equals(obj.password)){
                return true
            }
        })
    }



    String getConfirmPassword()
    {
        return "${password}"
    }
}
