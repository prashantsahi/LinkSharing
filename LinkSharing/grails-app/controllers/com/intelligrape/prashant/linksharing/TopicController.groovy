package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class TopicController {

    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Topic.list(params), model: [topicInstanceCount: Topic.count()]
    }

    def renderEditTopic() {
        println "from Render edit topic ----->>>  " + params
        Topic topic = Topic.get(params.topicId)
        render(template: "/topic/editTopic", model: [topic: topic])
    }

    def editTopic() {
        Topic topic = Topic.get(params.topicId)
        println "params ------->>>>>" + params
        topic.name = params.topicName
        println "from editTopic---------->>" + topic.name
        topic.save(failOnError: true, flush: true)
        flash.message = "Topic editted to " + topic.name
        render(template: '/topic/editTopicLink', model: [topic: topic])
    }

    def changeVisibility() {
        Topic topic = Topic.get(params.subscribedTopic)
        topic.visibility = params.ajax
        topic.save(failOnError: true, flush: true)
    }

    def deleteTopic() {
        Topic.get(params.topicId).delete()
        flash.message = "Topic deleted successfully"
        if (params.flag) {
            redirect(controller: 'home', action: "dashboard")
        } else {
            render "true"
        }
    }

    //to render the showTopic page
    def topicShow() {
        Topic topic = Topic.findById(params.topic)
        User currentUser = springSecurityService.currentUser
        def subscribedTopics = currentUser.subscriptions.topic
        render(view: '/topic/topicShow', model: [topic: topic, user: currentUser, subscribedTopics: subscribedTopics])
    }

    def show(Topic topicInstance) {
        respond topicInstance
    }

    def create() {
        respond new Topic(params)
    }

    @Transactional
    def save(Topic topicInstance) {

        User user1 = springSecurityService.currentUser
        topicInstance.createdBy = user1

        if (topicInstance == null) {
            notFound()
            return
        }

        if (topicInstance.validate() && topicInstance.save(flush: true, failOnError: true)) {
            flash.message = "${topicInstance.name} topic has successfully created "
            redirect(controller: 'home', action: 'dashboard')
        } else {
            respond topicInstance.errors, view: 'create'
        }
    }

    def edit(Topic topicInstance) {
        respond topicInstance
    }

    @Transactional
    def update(Topic topicInstance) {
        if (topicInstance == null) {
            notFound()
            return
        }

        if (topicInstance.hasErrors()) {
            respond topicInstance.errors, view: 'edit'
            return
        }

        topicInstance.save flush: true

        request.withFormat {

            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Topic.label', default: 'Topic'), topicInstance.id])
                redirect topicInstance
            }
            '*' { respond topicInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Topic topicInstance) {

        if (topicInstance == null) {
            notFound()
            return
        }

        topicInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Topic.label', default: 'Topic'), topicInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'topic.label', default: 'Topic'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def viewAllTemp() {
        params.max = params.max ?: 10
        params.offset = params.offset ?: 0
        List<Topic> topicList = Topic.createCriteria().list(params) {

        }
        [topics: topicList, totalCount: Topic.count]
    }
}
