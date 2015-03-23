package com.intelligrape.prashant.linksharing

import bootcamp.Seriousness

class Subscription {
    Date dateCreated
    Seriousness seriousness
    static belongsTo = [topic: Topic, user: User]
    static constraints = {
        user unique: 'topic'
    }
}
