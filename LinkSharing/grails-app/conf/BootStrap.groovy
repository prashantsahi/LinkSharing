import bootcamp.Seriousness
import bootcamp.Visibility
import com.intelligrape.prashant.linksharing.*

class BootStrap {

    def init = { servletContext ->
        createUser()
        topics()
        resources()
        readingItems()
        ratings()
    }

    void createUser() {

        (1..5).each {
            println it
            User user = new User(username: "prashantsahi$it", email: "sahi${it}@gmail.com", firstName: "prashant${it}", lastName: "sahi${it}", password: "password${it}", admin: "true", active: "true")
            println " validate User" + user.validate()
            user.save(flush: true, failOnError: true)
        }
    }


    def linkCount = 1
    def documentCount = 1

    void createTopics(User user) {
        5.times {
            if ((it % 2) != 0) {
                Topic topic = new Topic(name: "$user.firstName" + "-topic$it", createdBy: user, visibility: Visibility.Public)
                if (topic.save(flush: true, failOnError: true)) {
                    subscribeTopic(user, topic, it)
                }
            } else {
                Topic topic1 = new Topic(name: "$user.firstName" + "-topic$it", createdBy: user, visibility: Visibility.Private)
                if (topic1.save(flush: true, failOnError: true)) {
                    subscribeTopic(user, topic1, it)
                }
            }

        }
    }

    void topics() {
        (1..5).each {
            User user = User.get(it)
            createTopics(user)
        }

    }

    void subscribeTopic(User user1, Topic topic1, int index) {
        Subscription subscription
        if ((index % 3) == 0) {
            subscription= new Subscription(user: user1, topic: topic1, seriousness: Seriousness.VerySerious)
        } else if ((index % 3) == 1) {
            subscription = new Subscription(user: user1, topic: topic1, seriousness: Seriousness.Serious)
        } else {
            subscription = new Subscription(user: user1, topic: topic1, seriousness: Seriousness.Casual)
        }
        subscription.save(failOnError: true, flush: true)
    }

    void createResources(User user1, Topic topic1) {
        5.times {

            LinkResource link = new LinkResource(createdBy: user1, topic: topic1, description: "$topic1.name-link$it-description", linkUrl: "www.link$linkCount" + ".com")
            DocumentResource document = new DocumentResource(createdBy: user1, topic: topic1, description: "$topic1.name-doc$it-description", filePath: "/path/file${documentCount}")
            ++linkCount
            ++documentCount
            link.save(flush: true, failOnError: true)
            document.save(flush: true, failOnError: true)
        }

    }

    void resources() {
        (1..5).each {
            User user = User.get(it)
            def topic = Topic.findAllByCreatedBy(user)

            topic.each {
                println(user.id + "\t" + it.name)
                createResources(user, it)
            }
        }
    }

    void createReadingItems(User user1, Resource resource1, Boolean read) {
        ReadingItem readingitem = new ReadingItem(user: user1, resource: resource1, isRead: read)
        readingitem.save(flush: true, failOnError: true)

    }

    void readingItems() {
        (1..5).each {
            User user = User.get(it)
            def res = Resource.findAllByCreatedBy(user)
            int len = res.size()
            int div = len / 3
            len.times {
                if ((it % div) == 0) {
                    def resource = Resource.findByCreatedBy(user)

                    createReadingItems(user, resource, true)
                } else {
                    def resource1 = Resource.findByCreatedBy(user)
                    createReadingItems(user, resource1, false)
                }
            }

        }
    }


    void createRatings(User user1, Resource resource1, int score1) {
        ResourceRating rating = new ResourceRating(user: user1, resource: resource1, score: score1).save(flush: true, failOnError: true)


    }

    void ratings() {
        int count = 1
        (1..5).each {
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


    def destroy = {
    }

}