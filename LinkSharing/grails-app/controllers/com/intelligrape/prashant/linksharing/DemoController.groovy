package com.intelligrape.prashant.linksharing

class DemoController {

    def mail() {
        sendMail{
            async true
            to "sahiprashant@gmail.com"
            subject "Hello Sahi "
            body 'How are you?'
        }
        render 'mail successfully sent'
    }

    def posts() {
        render("heloooooooooooooooooooooo")
    }

    def editProfile() {
        render(view: '/user/editProfile')
    }

    def myDemo() {
        println(params)
    }

    def loginController() {
        println("from login controller")
        render(view: '/home/dashboard')
    }

    def hello() {
        redirect(action: 'index')
    }

    def index() {
        //   String name="prashant"
        // render (view : "hello",model: [name:name])
        render("firstname: $params.firstname")


    }

    def a() {
        render(view: "/demoPage")

    }

    def demo1() {
        String name = "sahi"
        render(view: "hello", model: [name: name])

    }

    def demoTemp() {
        String name = "sahi"
        render(template: "demoTemplate", model: [name: name])

    }


    def showImage(String path){
        println("path: ${path}")
        File file=new File(path)
        response.contentLength=file.bytes.length
        response.outputStream<<file.bytes
    }
}
