package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER'])
class ReadingItemController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def markAsRead() {
        Resource resource = Resource.get(params.readingItemId)
        User currentUser = springSecurityService.currentUser

        ReadingItem readingItem = ReadingItem.findByUserAndResource(currentUser, resource)
        if (readingItem) {
            readingItem.isRead = !readingItem.isRead
            readingItem.save(failOnError: true,flush: true)
            render(template: "/templates/inbox0rPostResource",model:[resource:resource])
        }
    }
}


