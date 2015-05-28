package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class TopicController {

    def springSecurityService
    def topicService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def renderEditTopic() {
        Topic topic = Topic.get(params.topicId)
        render(template: "/topic/editTopic", model: [topic: topic])
    }

    def editTopic() {
        Topic topic = Topic.get(params.topicId)
        topic.name = params.topicName
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

    @Transactional
    def save(Topic topicInstance) {
        if (topicService.saveTopic(topicInstance) == true) {
            flash.message = "${topicInstance.name} topic has successfully created "
            redirect(controller: 'home', action: 'dashboard')
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
