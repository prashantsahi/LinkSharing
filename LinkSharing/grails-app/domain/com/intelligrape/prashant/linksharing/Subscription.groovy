package com.intelligrape.prashant.linksharing

import bootcamp.Seriousness

class Subscription
{
    User user
    Date dateCreated
    Seriousness seriousness

    static belongsTo = [topic:Topic]

    static constraints = {
        user unique:'topic'
    }
}
