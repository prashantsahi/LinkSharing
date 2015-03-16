package linksharing

class ApplicationTagLib {
    static defaultEncodeAs = [taglib: 'raw']
//    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "ls"
    def recentShare = { attr ->
        out << g.render(template: "/login/recentshare", model: [resource: attr.resources, resCount: attr.resCnt])
    }

    def top = { attr ->
        out << g.render(template: "/login/topposts", model: [ratings: attr.rate])
    }

    def isSubscribed = { attr ->
        def subscribed = attr.sub1.user.username
//        println subscribed.unique()
//        println "checking subscriber and session user : ${attr.sub1.user.username} == ${session['username']}" + subscribed.contains(session['username'])
//        println ":::::::::::::::::::::::::from isSubscribed:::::::::::::::::::::::::::::::::::::::"
        if (subscribed.contains(session['username'])) {
            println ":::::::::::::::::::::::::from isSubscribed:::::::::::::::::::::::::::::::::::::::"
            out << g.render(template: "/home/isSubscribed", model: [sub: attr.sub1])
        }

    }

    def isNotSubscribed = { attr ->
        def subscribed = attr.sub1.user.username
        if (!subscribed.contains(session['username'])) {
            println ":::::::::::::::::::::::::from isNotSubscribed:::::::::::::::::::::::::::::::::::::::"
            out << g.render(template: "/home/isNotSubscribed", model: [sub: attr.sub1])
        }
    }

    def isEditable = { attr ->

    }

}
