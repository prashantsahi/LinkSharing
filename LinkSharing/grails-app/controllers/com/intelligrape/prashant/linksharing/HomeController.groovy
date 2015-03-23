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


    def posts() {
        def userObj = User.findByUsername(session['username'])
        def subscribedTopics = userObj.subscriptions.topic
        Resource res=Resource.findById(params.resource)
        println res.properties
        render(view: "/templates/post", model: [user: userObj,subscribedTopics:subscribedTopics,resource:res])
    }

    def dashboard() {
        def userObj = User.findByUsername(session['username'])
        def subscribedTopics = userObj.subscriptions.topic
        def subscription = subscribedTopics.size() < 5 ? subscribedTopics.asList() : subscribedTopics.subList(0, 5)
        subscription.sort { it.dateCreated }

        def resources = ReadingItem.createCriteria().list() {
            projections {
                property("resource")
            }
            and {
                eq("user", userObj)
                eq('isRead', false)
            }
        }

        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)
        render(view: '/home/dashboard', model: [user: userObj, subscriptions: subscription, res: resources, trending: trend1, subscribedTopics: subscribedTopics])
    }

    def viewAllTrendingTopic() {
        User currentUser = User.findByUsername(session['username'])
        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        render(view: '/home/allTrending', model: [trend: trend1, user: currentUser])
    }

    def showAllTrendingTopic() {

    }

}
