package first_grail_project

import bootcamp.Seriousness

class Subscription
{
    User user
    Date dateCreated
    Seriousness seriousness

    static constraints = {
    }
    static belongsTo = [topic:Topic]
}
