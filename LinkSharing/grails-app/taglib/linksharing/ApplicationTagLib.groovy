package linksharing

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
        out << g.render(template: '/user/inbox', model: [resources: attr.resource])
    }

    def isSubscribed = { attr ->
        User currentUser=User.findByUsername(session['username'])
        Subscription subscribed=Subscription.findByUserAndTopic(currentUser,attr.sub1)
        if (subscribed) {
            out << g.render(template: "/home/isSubscribed", model: [sub: attr.sub1])
        }
        else{
            out << g.render(template: "/home/isNotSubscribed", model: [sub: attr.sub1])
        }
    }

    /*def isNotSubscribed = { attr ->
        def subscribed = attr.sub1.createdBy.username
        if (subscribed!=session['username']) {
            out << g.render(template: "/home/isNotSubscribed", model: [sub: attr.sub1])
        }
    }
*/
    def isEditable = { attr ->
        def created = attr?.subscriber?.createdBy.username
//        def current = User.findByUsername(session['username'])
//        println current

        if (created==session['username'])
            out << g.render(template: "/home/isEditable")
    }
}
