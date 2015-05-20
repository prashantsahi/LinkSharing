package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER'])
class LinkResourceController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LinkResource.list(params), model: [linkResourceInstanceCount: LinkResource.count()]
    }

    def show(LinkResource linkResourceInstance) {
        respond linkResourceInstance
    }

    def create() {
        respond new LinkResource(params)
    }

    @Transactional
    def save(LinkResource linkResourceInstance) {

        User user = springSecurityService.currentUser
        println "***************************************************"
//            println linkResourceInstance
        println params
        linkResourceInstance.createdBy = user
        println linkResourceInstance.topic

        println "***************************************************"
//            println linkResourceInstance
        linkResourceInstance.validate()


        if (linkResourceInstance == null) {
            notFound()
            return
        }

        if (linkResourceInstance.hasErrors()) {
            respond linkResourceInstance.errors, view: 'create'
            return
        }

        if (linkResourceInstance.save(flush: true)) {
            flash.message = "${linkResourceInstance.title} resource has successfully created "
           redirect(controller: 'home', action: 'dashboard')
        }

    }

    def edit(LinkResource linkResourceInstance) {
        respond linkResourceInstance
    }

    @Transactional
    def update(LinkResource linkResourceInstance) {
        if (linkResourceInstance == null) {
            notFound()
            return
        }

        if (linkResourceInstance.hasErrors()) {
            respond linkResourceInstance.errors, view: 'edit'
            return
        }

        linkResourceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LinkResource.label', default: 'LinkResource'), linkResourceInstance.id])
                redirect linkResourceInstance
            }
            '*' { respond linkResourceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LinkResource linkResourceInstance) {

        if (linkResourceInstance == null) {
            notFound()
            return
        }

        linkResourceInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LinkResource.label', default: 'LinkResource'), linkResourceInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'linkResource.label', default: 'LinkResource'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
