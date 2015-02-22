package first_grail_project

class User
{
    String email,username,password
    String firstName,lastName
    Boolean admin,active
    Date dateCreated,lastUpdated
    Byte[] photo
    static hasMany = [subscriptions:Subscription,resources:Resource,readingitems:ReadingItem,resourceratings:ResourceRating,topics:Topic]

    static constraints = {
        photo nullable: true
        email(unique: true,blank: false,nullable: false, email: true)
        password(size: 5..15, blank: false)
    }

}
