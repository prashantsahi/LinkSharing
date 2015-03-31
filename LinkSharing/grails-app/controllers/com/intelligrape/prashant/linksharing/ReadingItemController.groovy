package com.intelligrape.prashant.linksharing


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ReadingItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def markAsRead() {
        Resource resource = Resource.get(params.readingItemId)
        User currentUser = User.findByUsername(session['username'])

        ReadingItem readingItem = ReadingItem.findByUserAndResource(currentUser, resource)
        println params.readingItemId
        if (readingItem) {
            readingItem.isRead = !readingItem.isRead
            readingItem.save(failOnError: true,flush: true)
            render(template: "/templates/inbox0rPostResource",model:[resource:resource])
        }
    }
}


