package com.intelligrape.prashant.linksharing

class SubscribeController {

    def index() {
        println('indexxxxxxxxxxx')
        render('from subscribe index     : ' + params)

    }

    def changeSeriousness() {
        Subscription subscription=Subscription.createCriteria().get {
            eq('topic',params.subscribedTopic)
            eq('user',params.subscribedUser)
        }
        subscription.seriousness=params.ajax
        subscription.save(flush: true,failOnError: true)
        render subscription
        println "------------------------------------------------------subscription-----------------------------------------------------"
    }
}
