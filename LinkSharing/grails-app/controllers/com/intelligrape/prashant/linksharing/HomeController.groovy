package com.intelligrape.prashant.linksharing

//import org.xhtmlrenderer.css.parser.property.PrimitivePropertyBuilders

class HomeController {

    def index() {
        redirect(action: 'dashboard')
    }

    def logout() {
        String user = session['username']
        session.invalidate()
        flash.message = "${user} has logged out"
        redirect(controller: 'login', action: 'index')
    }

    def dashboard() {
        def userObj = User.findByUsername(session['username'])
        def subscribedTopics = userObj.subscriptions.topic
        def subscription = subscribedTopics.size() < 5 ? subscribedTopics.asList() : subscribedTopics.subList(0, 5)
        subscription.sort{it.dateCreated}

        List<Resource> resources = Resource.createCriteria().list([order: 'desc', sort: 'dateCreated']) {
            readingitems {
                eq('isRead', false)
            }
        }
        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)
        render(view: '/user/dashboard', model: [user: userObj, subscriptions: subscription, res: resources, trending: trend1, subscribedTopics: subscribedTopics])
    }
}
