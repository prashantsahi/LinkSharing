package linkSharingCommandClass

import com.intelligrape.prashant.linksharing.*
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
        confirmPassword(validator: { val, obj ->
            if (val != obj.password) {
                return false
            }
        })
    }
}
