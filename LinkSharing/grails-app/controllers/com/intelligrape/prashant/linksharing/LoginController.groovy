package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import linkSharingCommandClass.RegisterCommand

class LoginController {
    static defaultAction = "index"

    def changePassword() {
        render view: 'changePassword'
    }

    def updatePassword() {
        int x = User.executeUpdate("update User set password=$params.password where email =$params.email")
        if (x) {
            flash.message = 'password successfully updated'
            redirect(action: 'index')
        }
    }

    def sendingMail() {
        sendMail {
            async true
            to "$params.email"
            subject "Change Password request"
            html "${g.link(controller: "login", action: "changePassword", absolute: "true", { "click on the link to change your password" })}"
        }
        render "check your mail"
    }


    def showForgotPassword() {
        render(view: 'forgotPassword')
    }

    def index() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0

        List<Resource> resources = Resource.createCriteria().list(params) {
            order("id", "desc")
            'topic' {
                eq('visibility', Visibility.Public)
            }
        }
        resources.sort { it.dateCreated }
        List<ResourceRating> rating = ResourceRating.createCriteria().list(params) {
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        render(view: "login", model: [res: resources, resCount: Resource.count, rating: rating])
    }

    def showAll() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0

        List<Resource> resources = Resource.createCriteria().list(params) {
            order("id", "desc")
            'topic' {
                eq('visibility', Visibility.Public)
            }
        }
        resources.sort { it.dateCreated }
        render(view: 'showAllRecentresources', model: [res: resources, resCount: Resource.count])
    }


    def recent() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0

        List<Resource> resources = Resource.createCriteria().list(params) {
            order("id", "desc")
            'topic' {
                eq('visibility', Visibility.Public)
            }
        }
        resources.sort { it.dateCreated }
        render(template: 'allRecentResources', model: [resources: resources, resCount: Resource.count])
    }

    def loginHandler(RegisterCommand registerCommand) {

        if (User.findByUsernameAndPassword(registerCommand.username, registerCommand.password)) {
            session["username"] = registerCommand.username
            println("session created successfully !!!!")
            println(session["username"])
            flash.message = "User ${session["username"]} has successfully logged into the system"
            redirect(controller: 'home', action: "dashboard")
        } else {
            render(view: "login")
        }
    }

    def register(RegisterCommand registerCommand) {
        println "from register action before validation"
        def file = request.getFile('file')
        /*if (!file.empty) {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        */ if (file.empty) {
            registerCommand.photoPath = grailsApplication.config.defaultImage
        } else {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        if (registerCommand.validate()) {
            session["username"] = registerCommand.username
            User user = new User()
            file.transferTo(new File(registerCommand.photoPath))
            user.properties = registerCommand
            user.save(failOnError: true, flush: true)

            sendMail {
                async true
                to "$registerCommand.email"
                subject "Verification mail"
                html "${g.link(controller: "home", action: "dashboard", absolute: "true", { "click on the link to verify your account" })}"
            }
            render 'mail successfully sent'

        } else {
            println registerCommand.errors
            redirect(action: 'index')
        }
    }
}