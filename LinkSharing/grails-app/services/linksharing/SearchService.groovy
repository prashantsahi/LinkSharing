package linksharing

import com.intelligrape.prashant.linksharing.*
import grails.transaction.Transactional
import org.springframework.web.context.request.RequestContextHolder

import javax.servlet.http.HttpSession

@Transactional
class SearchService {

    private static HttpSession getSession() {
        return RequestContextHolder.currentRequestAttributes().getSession()
    }

    List<Resource> searchGlobalResources(String searchedText) {
        List<Resource> resourcesMatched = []
        List<Topic> topics = Topic.createCriteria().list {
            ilike("name", searchedText + "%")
        }
        List<Resource> topicResources = []
        topics.each {
            topicResources += it.resources
        }
        resourcesMatched = searchPostsResources(searchedText) + topicResources
        return resourcesMatched
    }

    List<Resource> searchPostsResources(String searchedText) {
        List<Resource> resources = Resource.createCriteria().list {
            ilike("description", searchedText + "%")
        }
        return resources
    }

    List<Resource> searchInboxResources(String searchedText) {
        User user = User.findByUsername(session['username'])
        List<Resource> resources = Resource.createCriteria().list {
            ilike("description", searchedText + "%")
            readingItems {
                eq('isRead', false)
                eq('user', user)
            }
        }
        return resources
    }


}
