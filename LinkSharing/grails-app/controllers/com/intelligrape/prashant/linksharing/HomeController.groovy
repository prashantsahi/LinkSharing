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
//            render("from dashboard ")
        render(view: '/user/dashboard', model: [name: session['username']])
    }
}
