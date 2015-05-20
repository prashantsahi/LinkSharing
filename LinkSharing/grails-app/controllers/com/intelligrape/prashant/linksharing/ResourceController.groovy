package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class ResourceController {

    def deletePost() {
        Resource.get(params.resourceId).delete()
        flash.message = "Post deleted successfully"
        if (params.flag) {
            render "true"
        } else {
            redirect(controller: 'home', action: "dashboard")
        }
    }
}
