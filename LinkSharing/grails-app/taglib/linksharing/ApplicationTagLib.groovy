package linksharing

import com.intelligrape.prashant.linksharing.DocumentResource
import com.intelligrape.prashant.linksharing.LinkResource
import com.intelligrape.prashant.linksharing.Resource
import com.intelligrape.prashant.linksharing.Subscription
import com.intelligrape.prashant.linksharing.User

class ApplicationTagLib {
    static defaultEncodeAs = [taglib: 'raw']
//    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "ls"
    def recentShare = { attr ->
        out << g.render(template: "/login/recentshare", model: [resources: attr.resources, resCount: attr.resCnt])
    }

    def top = { attr ->
        out << g.render(template: "/login/topposts", model: [ratings: attr.rate])
    }

    def inbox = { attr ->
        out << g.render(template: '/home/inbox', model: [resources: attr.resource])
    }

    def isSubscribed = { attr ->
        User currentUser = User.findByUsername(session['username'])
        Subscription subscribed = Subscription.findByUserAndTopic(currentUser, attr.sub1)
        if (subscribed) {
            out << g.render(template: "/home/isSubscribed", model: [sub1: attr.sub1])
        } else {
            out << g.render(template: "/home/isNotSubscribed", model: [sub1: attr.sub1])
        }
    }

    def isEditable = { attr ->
        def created = attr?.subscriber?.createdBy.username
        if (created == session['username']) {
            out << g.render(template: "/home/isEditable", model: [subs: attr.subscriber])
        } else {
            out << g.render(template: "/home/isNotCreater", model: [subs: attr.subscriber])
        }
    }

    def checkRes={attr ->
        def resType=attr?.resource?.class
        if(resType==LinkResource){
            LinkResource linkResource=Resource.findById(attr?.resource.id)
            def link=linkResource.linkUrl
            out<< "<a href="+link+">View FullSite</a>"
        }
        else{
         out<<g.link{"Download"}
        }

    }
}
