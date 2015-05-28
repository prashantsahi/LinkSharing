package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import bootcamp.Visibility
import linksharing.SendMailService

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class UserController {
    def userService
    def springSecurityService
    SendMailService sendMailService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def updateProfile() {
        if (userService.updateUserProfile(params) == true) {
            flash.message = "profile updated successfully"
        }
        redirect(action: 'editProfile')
    }

    def mail() {
        Topic topicObj = Topic.findById(params.emailTopic)
        def htmlString = "${g.link(action: "topicShow", controller: "topic", params: [topic: topicObj.id], absolute: "true", { "text of the link here" })}"

        sendMailService.sendMailMethod("$params.emailId", "$topicObj.name", htmlString)

        flash.message = 'invite of ' + topicObj.name + ' topic successfully sent'
        redirect(controller: 'home', action: 'dashboard')
    }

// to show the user images
    @Secured(['permitAll'])
    def showImage(String path) {
        File file = new File(path)
        response.contentLength = file.bytes.length
        response.outputStream << file.bytes
    }

    def showPublicProfile() {
        User userObj = User.findById(params.user)
        List<Resource> publicResources = []

        List<Topic> userTopics = []
        if (userObj.admin == true) {
            userTopics = Topic.findAllByCreatedBy(userObj)
            publicResources = Resource.findAllByCreatedBy(userObj)
        } else {
            publicResources = Resource.createCriteria().list {
                eq("createdBy", userObj)
                topic {
                    eq("visibility", Visibility.Public)
                }
            }
            userTopics = Topic.findAllByCreatedByAndVisibility(userObj, Visibility.Public)
        }
        render(view: 'publicUserProfile', model: [user: userObj, publicResources: publicResources, userTopics: userTopics])
    }


    def editProfile() {
        User obj = springSecurityService.currentUser
        render(view: 'editProfile', model: [user: obj])
    }


    def userTable() {
        User currentUser = springSecurityService.currentUser
        render(view: 'Users_Table', model: [user: currentUser, subscribedTopics: Topic.list(), userList: User.list()])
    }

    @Transactional
    def activate() {
        User user = User.findById(params.userId)
        user.active = true
        user.save(failOnError: true, flush: true)
        redirect(action: 'userTable')
    }

    @Transactional
    def deactivate() {
        User user = User.findById(params.userId)
        user.active = false
        user.save(failOnError: true, flush: true)
        redirect(action: 'userTable')
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }
        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        userInstance.save flush: true
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
