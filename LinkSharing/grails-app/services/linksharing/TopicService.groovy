package linksharing

import com.intelligrape.prashant.linksharing.Topic
import com.intelligrape.prashant.linksharing.User
import grails.transaction.Transactional
import org.springframework.web.context.request.RequestContextHolder

import javax.servlet.http.HttpSession

@Transactional
class TopicService {
    def springSecurityService
    private static HttpSession getSession() {
        return RequestContextHolder.currentRequestAttributes().getSession()
    }

    def returnSubscribedTopics(def flag) {
        User user = springSecurityService.currentUser
        List<Topic> subscribedTopics = []

        if (flag) {
            subscribedTopics = Topic.findAllByCreatedBy(user)
        } else {
            if (user.admin) {
                subscribedTopics = Topic.list(sort: 'name')
            } else {
                subscribedTopics = user.subscriptions.topic.sort { it.name }
            }
        }
        return subscribedTopics
    }
}
