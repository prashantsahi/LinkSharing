package first_grail_project

import bootcamp.Visibility

class Topic
{
    String name
    Date dateCreated
    Date lastUpdated

  Visibility visibility

    static belongsTo = [createdBy:User]
    static  hasMany = [subscriptions:Subscription,resources:Resource]
    static constraints = {
        name unique: true
    }
}
