package com.intelligrape.prashant.linksharing

class HomeController {

    def index() {
        redirect(action: 'dashboard')
    }

    def logout() {
        session.invalidate()
        redirect(controller: 'login', action: 'index')
    }

    def dashboard() {
        println('from dashboard')
        def userObj = User.findByUsername(session['username'])
        List<Subscription> subscription = userObj.subscriptions.asList().sort { it.dateCreated }
        List<Resource> resources = Resource.createCriteria().list([order: 'desc', sort: 'dateCreated']) {

            readingitems{
                eq('isRead',false)
            }
        }
        render(view: '/user/dashboard', model: [user: userObj, subscriptions: subscription, res: resources])
    }
}
