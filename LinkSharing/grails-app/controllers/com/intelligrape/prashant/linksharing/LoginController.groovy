package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import linkSharingCommandClass.RegisterCommand
import linksharing.SendMailService
import org.scribe.model.Token
import org.springframework.security.authentication.AccountExpiredException
import org.springframework.security.authentication.CredentialsExpiredException
import org.springframework.security.authentication.DisabledException
import org.springframework.security.authentication.LockedException
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.web.WebAttributes

import javax.servlet.http.HttpServletResponse

class LoginController {
    static defaultAction = "index"
    SendMailService sendMailService
    def springSecurityService
    def oauthService

    def index() {
        if (springSecurityService.isLoggedIn()) {
            flash.message = springSecurityService.currentUser.username + " logged in successfully"
            redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
        } else {
            redirect action: 'auth', params: params
        }
    }

    def changePassword() {
        render(view: 'changePassword', model: [emailId: params.emailId])//use params.emailId
    }

    def updatePassword() {
        User user = User.findByEmail(params.email)
        user.password = params.password
        if (user.validate() && user.save(failOnError: true, flush: true)) {
            flash.message = 'password successfully updated'
            redirect(action: 'index')
        }
    }

    def sendingMail() {
        sendMailService.sendMailMethod("$params.email", "Change Password request", "${g.link(controller: "login", action: "changePassword", params: [emailId: params.email], absolute: "true", { "click on the link to change your password" })}")
        flash.message = "check your mail to update the password"
        redirect(action: 'index')
    }

    def showForgotPassword() {
        render(view: 'forgotPassword')
    }

    /**
     * Show the login page.
     */
    def auth() {

        def config = SpringSecurityUtils.securityConfig

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

//        render(view: "login", model: [res: resources, resCount: Resource.count, rating: rating])
        String postUrl = "${request.contextPath}${config.apf.filterProcessesUrl}"
        render view: 'login', model: [postUrl            : postUrl,
                                      rememberMeParameter: config.rememberMe.parameter, res: resources, resCount: Resource.count, rating: rating]
    }

    def authAjax() {
        response.setHeader 'Location', SpringSecurityUtils.securityConfig.auth.ajaxLoginFormUrl
        response.sendError HttpServletResponse.SC_UNAUTHORIZED
    }

    /**
     * Show denied page.
     */
    def denied() {
        if (springSecurityService.isLoggedIn() &&
                authenticationTrustResolver.isRememberMe(SecurityContextHolder.context?.authentication)) {
            // have cookie but the page is guarded with IS_AUTHENTICATED_FULLY
            redirect action: 'full', params: params
        }
    }

    /**
     * Login page for users with a remember-me cookie but accessing a IS_AUTHENTICATED_FULLY page.
     */
    def full() {
        def config = SpringSecurityUtils.securityConfig
        render view: 'auth', params: params,
                model: [hasCookie: authenticationTrustResolver.isRememberMe(SecurityContextHolder.context?.authentication),
                        postUrl  : "${request.contextPath}${config.apf.filterProcessesUrl}"]
    }

    def authfail() {

        String msg = ''
        def exception = session[WebAttributes.AUTHENTICATION_EXCEPTION]
        if (exception) {
            if (exception instanceof AccountExpiredException) {
                msg = g.message(code: "springSecurity.errors.login.expired")
            } else if (exception instanceof CredentialsExpiredException) {
                msg = g.message(code: "springSecurity.errors.login.passwordExpired")
            } else if (exception instanceof DisabledException) {
                msg = g.message(code: "springSecurity.errors.login.disabled")
            } else if (exception instanceof LockedException) {
                msg = g.message(code: "springSecurity.errors.login.locked")
            } else {
                msg = g.message(code: "springSecurity.errors.login.fail")
            }
        }

        if (springSecurityService.isAjax(request)) {
            render([error: msg] as JSON)
        } else {
            flash.message = msg
            redirect action: 'auth', params: params
        }
    }

    def ajaxSuccess() {
        render([success: true, username: springSecurityService.authentication.name] as JSON)
    }

    def ajaxDenied() {
        render([error: 'access denied'] as JSON)
    }

    def showAllPosts() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0
        List<ResourceRating> rating = ResourceRating.createCriteria().list(params) {
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        render(view: 'showAllPosts', model: [rating: rating, rateCount: ResourceRating.count])
    }

    def topPosts() {
        params.max = params.max ?: 5
        params.offset = params.offset ?: 0
        List<ResourceRating> rating = ResourceRating.createCriteria().list(params) {
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        render(template: 'allTopPosts', model: [ratings: rating, rateCount: ResourceRating.count])
    }

    def showAllResources() {
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

    def register(RegisterCommand registerCommand) {
        def file = request.getFile('file')
        def file1=params.file
        println("file" +  file.empty)
        if (file.empty) {
            registerCommand.photoPath = grailsApplication.config.defaultImage
        } else {
            registerCommand.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        if (registerCommand.validate()) {
//            session["username"] = registerCommand.username
            User user = new User()
            file.transferTo(new File(registerCommand.photoPath))
            user.properties = registerCommand
            user.active = true
            user.save(failOnError: true, flush: true)
            Role role = Role.findByAuthority('ROLE_USER')
            UserRole userRole = new UserRole(user: user, role: role).save(flush: true, failOnError: true)
            springSecurityService.reauthenticate(user.username, user.password)
            String htmlString = "${g.link(controller: "home", action: "dashboard", absolute: "true", { "click on the link to verify your account" })}"
            sendMailService.sendMailMethod("$registerCommand.email", "Verification mail", htmlString)
            flash.message = 'Registration mail successfully sent'

            redirect(action: 'index')

        } else {
            redirect(action: 'index')
        }
    }
}