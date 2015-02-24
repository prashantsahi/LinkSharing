import bootcamp.Seriousness
import bootcamp.Visibility
import first_grail_project.DocumentResource
import first_grail_project.LinkResource
import first_grail_project.ReadingItem
import first_grail_project.Resource
import first_grail_project.ResourceRating
import first_grail_project.Subscription
import first_grail_project.Topic
import first_grail_project.User

import javax.annotation.Resources

class BootStrap {

    def init = { servletContext ->
        createUser()
        User user =User.get(1)
        (1..3).each {

            Resource resource= Resource.get(it)
         //  println("User :\t" +user)
            println "Resource :\t"+ resource
            createReadingItems(user,resource,false)

       }


        (1..3).each {
            Resource resource= Resource.get((it*5))
            createRatings(user,resource,(it+1))

                    }
    }

    void createUser() {

        (1..2).each {
            println it
            User user = new User(username: "prashantsahi${it}", email: "sahi${it}@gmail.com", firstName: "prashant${it}", lastName: "sahi${it}", password: "password${it}", admin: "true", active: "true")
            println " validate User"+user.validate()
            if (user.save())
            {
                createTopics(user)
            }
            else
            {
                user.errors.allErrors.each {
                    println it
                }
            }

        }
    }


    def topicCount=1
    def linkCount=1
    def documentCount=1
    void createTopics(User user) {

        5.times {
            Topic topic = new Topic(name: "topic$topicCount", createdBy: user, visibility: Visibility.Public)
            ++topicCount
                if(topic.save(flush: true, failOnError: true)){
                subscribeTopic(user,topic)
                    createResources(user,topic)
            }

        }
    }

    void subscribeTopic(User user1,Topic topic1)
    {
        Subscription subscription = new Subscription(user: user1 ,topic : topic1 , seriousness: Seriousness.VerySerious)
        println subscription.validate()
        subscription.save(failOnError: true, flush : true)
    }

        void createResources(User user1,Topic topic1)
        {
            5.times {

                LinkResource link = new LinkResource(createdBy: user1 ,topic : topic1 ,description:"description$linkCount",linkUrl: "www.link{$linkCount}.com" )
                DocumentResource document =new DocumentResource(createdBy: user1 ,topic : topic1 ,description:"description$documentCount",filePath: "/path/file${documentCount}")
                ++linkCount
                ++documentCount
                link.save(flush: true, failOnError: true)
                document.save(flush: true, failOnError: true)
            }

        }


        void createReadingItems(User user1,Resource resource1,Boolean isread)
        {
        ReadingItem readingitem = new ReadingItem(user: user1,resource:resource1,isRead: isread)
            readingitem.save(flush:true,failOnError: true)

        }

        void createRatings(User user1,Resource resource1,int score1)
        {
            ResourceRating rating=new ResourceRating(user: user1,resource:resource1,score: score1).save(flush: true,failOnError: true)


        }





    def destroy = {
        }

}