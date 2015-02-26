package com.intelligrape.prashant.linksharing

class LoginController {
    static defaultAction = "index"

    def index() {
        render(view: "login")
    }

    def dash() {
        render(view: "/user/dashboard")

    }
}
