package com.intelligrape.prashant.linksharing

class SubscribeController {

    def index() {
        println('indexxxxxxxxxxx')
        render('from subscribe index     : ' + params)
    }

    def changeSeriousness() {
        Topic topic=Topic.load(params.subscribedTopic)
        Subscription subscription=Subscription.createCriteria().get {
            eq('topic',topic)
        }
        subscription.seriousness=params.ajax
        subscription.save(flush: true,failOnError: true)
    }
}
