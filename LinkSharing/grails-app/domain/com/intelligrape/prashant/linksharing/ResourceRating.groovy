package com.intelligrape.prashant.linksharing

class ResourceRating {
    Integer score
    User user
    static belongsTo = [resource:Resource]
    static constraints = {
        score range: 1..5
    }
    static mapping = {
        score defaultValue :"2"
    }
}
