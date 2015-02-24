package first_grail_project

abstract class Resource {
    User createdBy
    String description
    Date dateCreated
    Date lastUpdated

    static hasMany = [readingitems:ReadingItem,resourceratings:ResourceRating]
    static belongsTo=[topic:Topic]
    static constraints = {
        description maxSize: 1024
    }
}
