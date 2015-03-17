package com.intelligrape.prashant.linksharing

//import org.xhtmlrenderer.css.parser.property.PrimitivePropertyBuilders

class HomeController {

    def index() {
        redirect(action: 'dashboard')
    }

    def logout() {
        session.invalidate()
        redirect(controller: 'login', action: 'index')
    }

    def dashboard() {
        def userObj = User.findByUsername(session['username'])
        List<Subscription> subscription = userObj.subscriptions.asList().sort { it.dateCreated }
        List<Resource> resources = Resource.createCriteria().list([order: 'desc', sort: 'dateCreated']) {

            readingitems {
                eq('isRead', false)
            }
        }
        List<Topic> topic = Topic.list().sort { it.resources.size() }
        /* List<Resource> resource = Resource.list()
println("map----------------")
Map map = resource.groupBy { it.topic }
map.each {
 println("${it.key} -- ${it.value?.size()}")
}*/
        render(view: '/user/dashboard', model: [user: userObj, subscriptions: subscription, res: resources])
    }
}
