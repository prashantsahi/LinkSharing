package com.intelligrape.prashant.linksharing

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

//import spock.util.mop.Use
@Transactional
class TopicController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Topic.list(params), model: [topicInstanceCount: Topic.count()]
    }

    def changeVisibility() {
        Topic topic = Topic.get(params.subscribedTopic)
        topic.visibility = params.ajax
        topic.save(failOnError: true, flush: true)
    }

    //to render the showTopic page
    def topicShow() {
        Topic topic = Topic.findById(params.topic)
        User currentUser = User.findByUsername(session['username'])
        def subscribedTopics = currentUser.subscriptions.topic
        render(view: '/topic/topicShow', model: [topics: topic, user: currentUser, subscribedTopics: subscribedTopics])
    }

    def show(Topic topicInstance) {
        respond topicInstance
    }

    def create() {
        respond new Topic(params)
    }

    @Transactional
    def save(Topic topicInstance) {

        User user1 = User.findByUsername(session['username'])
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
