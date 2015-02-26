package com.intelligrape.prashant.linksharing

class HomeController {

    def index(){
        if (session['username']) {
            println session['username']
            redirect(action: 'dashboard')
        } else {
            session.invalidate()
            redirect(controller: 'login',action: 'index'    )
        }

    }

    def dashboard() {
            println('from dashboard')
//            render("from dashboard ")
            render(view: '/user/dashboard',model: [name:session['username']])
    }
}
