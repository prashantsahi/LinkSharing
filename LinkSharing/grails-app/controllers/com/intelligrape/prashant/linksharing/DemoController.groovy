package com.intelligrape.prashant.linksharing

class DemoController {

    def posts()
    {
       render(view: "/post")
    }
    def editProfile(){
        render(view: '/Edit profile')
    }
    def myDemo(){
        println(params)
    }
    def topicShow(){
        println "from top posts : "+params.topic
        render(view : '/topicShow' ,model: [topics:params.topic])
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
