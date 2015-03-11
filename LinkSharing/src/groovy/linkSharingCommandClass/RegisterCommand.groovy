package linkSharingCommandClass

import com.intelligrape.prashant.linksharing.ReadingItem
import com.intelligrape.prashant.linksharing.Resource
import com.intelligrape.prashant.linksharing.ResourceRating
import com.intelligrape.prashant.linksharing.Subscription
import com.intelligrape.prashant.linksharing.Topic
import grails.validation.Validateable

/**
 * Created by intelligrape on 4/3/15.
 */
@Validateable
class RegisterCommand {

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
    String confirmPassword


    static hasMany = [subscriptions: Subscription, resources: Resource, readingitems: ReadingItem, resourceratings: ResourceRating, topics: Topic]
    static constraints = {
        dateCreated nullable: true
        lastUpdated nullable: true
        admin nullable :true
        active nullable: true
        email(unique: true, blank: false, email: true)
        password(size: 5..15, blank: false)
        lastName(validator: { val, obj ->
            if (val?.equals(obj.firstName)) {
                return false
            }
        })
        confirmPassword(validator: {val,obj->
            if(val!=obj.password){
                return false
            }
        })
    }
}
