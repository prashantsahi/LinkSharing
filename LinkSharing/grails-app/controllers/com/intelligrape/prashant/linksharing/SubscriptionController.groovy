package com.intelligrape.prashant.linksharing

import bootcamp.Seriousness
import grails.transaction.Transactional
import linksharing.TopicService

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class SubscriptionController {
    TopicService topicService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subscription.list(params), model: [subscriptionInstanceCount: Subscription.count()]
    }

    @Transactional
    def changeSeriousness() {
        Topic topic = Topic.load(params.subscribedTopic)
        User user = User.findByUsername(session['username'])
        Subscription subscription = Subscription.findByUserAndTopic(user, topic)
        subscription.seriousness = params.ajax
        subscription.save(flush: true, failOnError: true)
    }

    @Transactional
    def viewAllSubscriptions() {
        User user = User.findByUsername(session['username'])
        List<Topic> subscribedTopics = topicService.returnSubscribedTopics(params.topicFlag)
              render(view: '/home/allSubscription', model: [user: user,topicFlag:params.topicFlag, subscribedTopics: subscribedTopics, subscriptionCount: subscribedTopics.count])
    }

    @Transactional
    def showSubscriptions() {
        params.max = params.max ?: 3
        params.offset = params.offset ?: 3
        def user = User.findByUsername(session['username'])
        def subscribedTopics = user.subscriptions.topic
        render(template: '/home/viewAllSubscriptions', model: [subscriptions: subscribedTopics, subscriptionCount: subscribedTopics.count, max: params.max, offset: params.offset])

    }

    @Transactional
    def subscribed() {
        User userObj = User.findByUsername(session['username'])
        Topic topicObj = Topic.findByName(params.topic)
        Subscription subscription = new Subscription(user: userObj, topic: topicObj, seriousness: Seriousness.Serious)
        if ((subscription.validate())) {
            subscription.save(failOnError: true, flush: true)
            render(template: "/home/isSubscribed", model: [sub1: topicObj])
        }
    }

    def show(Subscription subscriptionInstance) {
        respond subscriptionInstance
    }

    def create() {
        respond new Subscription(params)
    }

    @Transactional
    def save(Subscription subscriptionInstance) {

        if (subscriptionInstance == null) {
            notFound()
            return
        }

        if (subscriptionInstance.hasErrors()) {
            respond subscriptionInstance.errors, view: 'create'
            return
        }

        subscriptionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subscription.label', default: 'Subscription'), subscriptionInstance.id])
                redirect subscriptionInstance
            }
            '*' { respond subscriptionInstance, [status: CREATED] }
        }
    }

    def edit(Subscription subscriptionInstance) {
        respond subscriptionInstance
    }

    @Transactional
    def update(Subscription subscriptionInstance) {
        if (subscriptionInstance == null) {
            notFound()
            return
        }

        if (subscriptionInstance.hasErrors()) {
            respond subscriptionInstance.errors, view: 'edit'
            return
        }

        subscriptionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Subscription.label', default: 'Subscription'), subscriptionInstance.id])
                redirect subscriptionInstance
            }
            '*' { respond subscriptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Subscription subscriptionInstance) {

        if (subscriptionInstance == null) {
            notFound()
            return
        }

        subscriptionInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Subscription.label', default: 'Subscription'), subscriptionInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subscription.label', default: 'Subscription'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
