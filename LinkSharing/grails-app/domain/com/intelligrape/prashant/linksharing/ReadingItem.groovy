package com.intelligrape.prashant.linksharing

class ReadingItem {
    Boolean isRead
    User user
    static belongsTo = [resource:Resource]
    static constraints = {
    }
}
