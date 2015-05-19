package linksharing

import bootcamp.Visibility
import com.intelligrape.prashant.linksharing.*

class BootstrapService {

    void createUser() {
        Role admin = new Role(authority: "admin").save(flush: true, failOnError: true);
        Role normalUser = new Role(authority: "User").save(flush: true, failOnError: true);
        UserRole userRole;
        (1..3).each {
            User user = new User(username: "user$it", email: "sahi${it}@gmail.com", firstName: "prashant${it}", lastName: "sahi${it}", password: "password${it}", admin: "false", active: "true")
            println(":::::::::::::::::::::::::::::::::::::::::"+user.validate()+":::::::::::::::::::::::::::::::::::::::::::::")
            if (user.validate()) {
                println("errors : "+user.hasErrors())
                user.save(flush: true, failOnError: true)
                println("after save")
                if ((it % 2) == 0) {
                    userRole = new UserRole(user: user, role: admin).save(flush: true, failOnError: true)
                } else {
                    userRole = new UserRole(user: user, role: normalUser).save(flush: true, failOnError: true)
                }
            }
        }
    }

    int linkCount = 1
    int documentCount = 1

    void createTopics(User user) {
        5.times {
            if ((it % 2) != 0) {
                Topic topic = new Topic(name: "$user.username" + "-topic$it", createdBy: user, visibility: Visibility.Public)
                if (topic.validate())
                    topic.save(flush: true, failOnError: true)

            } else {
                Topic topic1 = new Topic(name: "$user.username" + "-topic$it", createdBy: user, visibility: Visibility.Private)
                topic1.save(flush: true, failOnError: true)
            }
        }
    }

    void topics() {
        (1..3).each {
            User user = User.get(it)
            createTopics(user)
        }
    }

    void createResources(User user1, Topic topic1) {
        5.times {
            LinkResource link = new LinkResource(createdBy: user1, topic: topic1, title: "titleLink$linkCount", description: "$topic1.name-link$it-description", linkUrl: "http://www.link$linkCount" + ".com")
            DocumentResource document = new DocumentResource(createdBy: user1, topic: topic1, title: "titleDoc$documentCount", description: "$topic1.name-doc$it-description", filePath: "/path/file${documentCount}", fileName: "file$documentCount", fileType: ".txt")
            ++linkCount
            ++documentCount
            link.save(flush: true, failOnError: true)
            document.save(flush: true, failOnError: true)
//            createReadingItems(user1, link, true)
//            createReadingItems(user1, document, true)
        }
    }

    void resources() {
        (1..3).each {
            User user = User.get(it)
            def topic = Topic.findAllByCreatedBy(user)
            topic.each {
                createResources(user, it)
            }
        }
    }

    /*void createReadingItems(User user1, Resource resource1, Boolean read) {
        ReadingItem readingitem = new ReadingItem(user: user1, resource: resource1, isRead: read)
        readingitem.save(flush: true, failOnError: true)
    }
*/
//    void readingItems() {
//        (1..5).each {
//            User user = User.get(it)
//            def res = Resource.findAllByCreatedBy(user)
//            int len = res.size()
//            int div = len / 3
//            len.times {
//                if ((it % div) == 0) {
//                    def resource = Resource.findByCreatedBy(user)
//
//                    createReadingItems(user, resource, true)
//                } else {
//                    def resource1 = Resource.findByCreatedBy(user)
//                    createReadingItems(user, resource1, false)
//                }
//            }
//        }
//    }


    void createRatings(User user1, Resource resource1, int score1) {
        ResourceRating rating = new ResourceRating(user: user1, resource: resource1, score: score1).save(flush: true, failOnError: true)
    }

    void ratings() {
        int count = 1
        (1..3).each {
            User user = User.get(it)
            def resource = Resource.findAllByCreatedBy(user)
            resource.each {
                createRatings(user, it, count)
                count++
                if (count == 6)
                    count = 1
            }
        }
    }
}
