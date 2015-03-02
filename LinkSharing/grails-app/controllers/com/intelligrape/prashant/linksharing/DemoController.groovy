package com.intelligrape.prashant.linksharing

class DemoController {

    def demoPage()
    {
        render(view: "/demoPage")

    }
    def loginController(){
        println("from login controller")
        render( view: '/user/dashboard')
    }

    def hello()
    {

        redirect(action : 'index')

    }
    def index() {
     //   String name="prashant"
       // render (view : "hello",model: [name:name])
        render("firstname: $params.firstname")


    }
    def a()
    {
        render(view: "hello")

    }
    def demo1()
    {
        String name="sahi"
        render(view: "hello",model: [name:name])

    }

    def demoTemp()
    {
        String name="sahi"
        render(template: "demoTemplate",model: [name:name])

    }
}
