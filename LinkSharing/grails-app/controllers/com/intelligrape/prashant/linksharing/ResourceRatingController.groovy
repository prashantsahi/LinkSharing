package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER'])
class ResourceRatingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def ratingResource() {
        Resource resource = Resource.get(params.resourceId)
        def userObj = User.findByUsername(session['username'])
        ResourceRating resourceRating = ResourceRating.findOrCreateByResourceAndUser(resource,userObj)
        resourceRating.score = Integer.parseInt(params.rating)
        resourceRating.save(failOnError: true, flush: true)
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ResourceRating.list(params), model: [resourceRatingInstanceCount: ResourceRating.count()]
    }

    def show(ResourceRating resourceRatingInstance) {
        respond resourceRatingInstance
    }

    def create() {
        respond new ResourceRating(params)
    }

    @Transactional
    def save(ResourceRating resourceRatingInstance) {
        if (resourceRatingInstance == null) {
            notFound()
            return
        }

        if (resourceRatingInstance.hasErrors()) {
            respond resourceRatingInstance.errors, view: 'create'
            return
        }

        resourceRatingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resourceRating.label', default: 'ResourceRating'), resourceRatingInstance.id])
                redirect resourceRatingInstance
            }
            '*' { respond resourceRatingInstance, [status: CREATED] }
        }
    }

    def edit(ResourceRating resourceRatingInstance) {
        respond resourceRatingInstance
    }

    @Transactional
    def update(ResourceRating resourceRatingInstance) {
        if (resourceRatingInstance == null) {
            notFound()
            return
        }

        if (resourceRatingInstance.hasErrors()) {
            respond resourceRatingInstance.errors, view: 'edit'
            return
        }

        resourceRatingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ResourceRating.label', default: 'ResourceRating'), resourceRatingInstance.id])
                redirect resourceRatingInstance
            }
            '*' { respond resourceRatingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ResourceRating resourceRatingInstance) {

        if (resourceRatingInstance == null) {
            notFound()
            return
        }

        resourceRatingInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ResourceRating.label', default: 'ResourceRating'), resourceRatingInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resourceRating.label', default: 'ResourceRating'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
