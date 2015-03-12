package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import linkSharingCommandClass.RegisterCommand

class LoginController {
    static defaultAction = "index"

    def index() {
        params.max = params.max ?: 10
        params.offset = params.offset ?: 0
        params.sort = params.sort ?: 'id'
        params.order = params.order ?: 'desc'
        List<Resource> resources = Resource.list(params)
        List<ResourceRating> rating = ResourceRating.createCriteria().list(params) {
            eq("score", 5)
            order("score", "desc")
        }
        render(view: "login1", model: [res: resources, resCount: Resource.count, rating: rating])
//        render(template: "/templates/recentshare", model: [res: resources, resCount: Resource.count, rating: rating])
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
        if (file.empty) {
            registerCommand.photoPath = "/home/intelligrape/Upload/imageUpload/user.jpg"
//            flash.message = "please uploaded the photo"
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

