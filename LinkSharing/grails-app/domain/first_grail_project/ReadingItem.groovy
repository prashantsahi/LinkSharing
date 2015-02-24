package first_grail_project

class ReadingItem {
    Boolean isRead
    User user
    static belongsTo = [resource:Resource]
    static constraints = {
    }
}
