package linkSharingCommandClass

import com.intelligrape.prashant.linksharing.*
<<<<<<< HEAD
=======

>>>>>>> 220f0b284cc4fd2c24ce111e973c4c4ef506fc73
import grails.validation.Validateable

@Validateable
class RegisterCommand {

    String email
    String username
    String password
    String firstName
    String lastName
    Date dateCreated
    Date lastUpdated
    String photoPath
    String confirmPassword

    static hasMany = [subscriptions: Subscription, resources: Resource, readingitems: ReadingItem, resourceratings: ResourceRating, topics: Topic]
    static constraints = {
        importFrom(User)
        dateCreated nullable: true
        lastUpdated nullable: true
        confirmPassword(validator: {val,obj->
            if(val!=obj.password){
                return false
            }
        })
    }
}
