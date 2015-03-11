package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import linkSharingCommandClass.RegisterCommand

class LoginController {
    static defaultAction = "index"

    def index() {
        List<Resource> resources = Resource.list(max: 5, offset: 0, order: "desc", sort: "id")
        List<ResourceRating> rating = ResourceRating.createCriteria().list(max: 5, offset: 0)
                {
                    eq("score", 5)
                    order("score", "desc")
                }
        render(view: "login1", model: [res: resources, rating: rating])
    }

    def loginHandler(RegisterCommand registerCommand) {

        if (User.findByUsernameAndPassword(registerCommand.username, registerCommand.password)) {

            session["username"] = registerCommand.username
            println("session created successfully !!!!")
            println(session["username"])
            redirect(controller: 'home', action: "dashboard")
        } else {
//            session.invalidate()
            render(view: "login1")
        }
    }

    def register(RegisterCommand registerCommand) {
        println "from register action before validation"

        def file = request.getFile('file')
        println(file)
        if (file.empty) {
            flash.message = "please uploaded the photo"
        } else {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        if (registerCommand.validate()) {
            session["username"] = registerCommand.username
            User user = new User()
            file.transferTo(new File(registerCommand.photoPath))
            user.properties = registerCommand
            user.save(failOnError: true)
            render(view: "/user/dashboard")
        } else if (registerCommand.hasErrors()) {
            println registerCommand.errors
            render(view: "login1")
        }
    }
}

