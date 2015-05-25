package linksharing

import com.intelligrape.prashant.linksharing.*

class ApplicationTagLib {
    def springSecurityService
    static defaultEncodeAs = [taglib: 'raw']
//    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "ls"
    def recentShare = { attr ->
        out << g.render(template: "/login/recentshare", model: [resources: attr.resources, resCount: attr.resCnt])
    }

    def top = { attr ->
        out << g.render(template: "/login/topPosts", model: [ratings: attr.rate])
    }

    def inbox = { attr ->
        out << g.render(template: '/home/inbox', model: [resources: attr.resource])
    }

    def logo = { attr ->
        Resource resource = attr.resource
        if (resource?.class == LinkResource)
            out << g.render(template: '/templates/logos', model: [resource: resource])
        else {
            out << g.render(template: "/templates/logosDocument", model: [resource: resource])
        }
    }

    def isSubscribed = { attr ->
        User currentUser = springSecurityService.currentUser
        Subscription subscribed = Subscription.findByUserAndTopic(currentUser, attr.sub1)
        if (subscribed) {
            out << g.render(template: "/home/isSubscribed", model: [sub1: attr.sub1, flag: attr.flag])
        } else {
            out << g.render(template: "/home/isNotSubscribed", model: [sub1: attr.sub1])
        }
    }

    def isEditable = { attr ->
        User currentUser = springSecurityService.currentUser
        def created = attr?.subscriber?.createdBy.username
//        println "authorities------------------>"+currentUser.getAuthorities().authority.contains("ROLE_ADMIN")
        if (created == springSecurityService.currentUser.username || currentUser.getAuthorities().authority.contains("ROLE_ADMIN")) {
            out << g.render(template: "/home/isEditable", model: [subs: attr.subscriber, flag: attr.flag])
        } else {
            out << g.render(template: "/home/isNotCreater", model: [subs: attr.subscriber])
        }
    }

    def checkRes = { attr ->
        def resType = attr?.resource?.class
        if (resType == LinkResource) {
            LinkResource linkResource = Resource.findById(attr?.resource?.id)
            def link = linkResource.linkUrl
            out << "<a class='noUnderline' href=" + link + ' target = "_blank" ' + ">View FullSite</a>"
        } else {
            out << g.render(template: "/home/resourceDownload", model: [resourceId: attr?.resource?.id])
        }
    }
    def checkReading = { attr ->
        User currentUser = springSecurityService.currentUser
        ReadingItem readingItem = ReadingItem.findByUserAndResource(currentUser, attr?.resource)
        if (!readingItem) {
            return
        }

        if (readingItem.isRead) {
            out << g.render(template: '/home/readResource', model: [resource: attr?.resource, ajaxClass: attr.ajaxClass])
        } else {
            out << g.render(template: '/home/unreadResource', model: [resource: attr?.resource, ajaxClass: attr.ajaxClass])
        }
    }
}
