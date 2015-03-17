package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import linkSharingCommandClass.RegisterCommand

class LoginController {
    static defaultAction = "index"

    def index() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0
        params.sort = params.sort ?: 'id'
        params.order = params.order ?: 'desc'
//        List<Resource> resources = Resource.list(params)
        List<Resource> resources = Resource.createCriteria().list(params) {
            'topic' {
                eq('visibility', Visibility.Public)
            }
        }
        resources.sort { it.createdBy }

        List<ResourceRating> rating = ResourceRating.createCriteria().list(params) {
//            eq("score", 5)
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        render(view: "login", model: [res: resources, resCount: Resource.count, rating: rating])
    }

    def loginHandler(RegisterCommand registerCommand) {

        if (User.findByUsernameAndPassword(registerCommand.username, registerCommand.password)) {
            session["username"] = registerCommand.username
            println("session created successfully !!!!")
            println(session["username"])
            redirect(controller: 'home', action: "dashboard")
        } else {
            render(view: "login")
        }
    }

    def register(RegisterCommand registerCommand) {
        println "from register action before validation"

        def file = request.getFile('file')
        if (!file.empty) {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        /*if (file.empty) {
            registerCommand.photoPath = "/home/intelligrape/Upload/imageUpload/user.jpg"
//            flash.message = "please uploaded the photo"
        } else {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }*/
        if (registerCommand.validate()) {
            session["username"] = registerCommand.username
            User user = new User()
            file.transferTo(new File(registerCommand.photoPath))
            user.properties = registerCommand
            user.save(failOnError: true)
            render(view: "/user/dashboard")
        } else if (registerCommand.hasErrors()) {
            println registerCommand.errors
            render(view: "login")
        }
    }
}

