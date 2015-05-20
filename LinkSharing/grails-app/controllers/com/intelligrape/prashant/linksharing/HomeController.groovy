package com.intelligrape.prashant.linksharing

import grails.plugin.springsecurity.annotation.Secured
import linksharing.TopicService

@Secured(['ROLE_ADMIN','ROLE_USER'])
class HomeController {
def springSecurityService
    TopicService topicService

    def index() {
        redirect(action: 'dashboard')
    }

    /*def logout() {
        String user = session['username']
        session.invalidate()
        flash.message = "${user} has logged out"
        redirect(controller: 'login', action: 'index')
    }*/

    def posts() {
        def userObj = User.findByUsername(session['username'])
        def subscribedTopics = userObj.subscriptions.topic
        Resource resource = Resource.findById(params.resource)
        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)
        def average = ResourceRating.createCriteria().list {
            projections {
                avg('score')
            }
            and {
                eq('resource', resource)
            }
        }
        Integer avg = average[0]
        println('average  :  ' + avg)
        render(view: "/templates/post", model: [user: userObj, subscribedTopics: subscribedTopics, resource: resource, average: avg, trending: trend1])
    }

    def adminPosts() {

        def resourceAndAverageScore = ResourceRating.createCriteria().list() {
            projections {
                groupProperty("resource")
                avg("score")
            }
        }.collect { [resource: it[0], avgRating: it[1]] }

        def userObj = User.findByUsername(session['username'])
        def subscribedTopics = Topic.list(sort: 'dateCreated', order: "desc")
        List<Topic> trendingTopics = Topic.list().sort { it.resources.size() }.reverse()
        trendingTopics = trendingTopics.size() < 5 ? trendingTopics.asList() : trendingTopics.subList(0, 5)
        render(view: "/home/adminPosts", model: [user: userObj, subscribedTopics: subscribedTopics, resources: resourceAndAverageScore, trending: trendingTopics])
    }

    def dashboard() {
        def userObj = springSecurityService.currentUser
        def subscribedTopics = userObj.subscriptions.topic
        def subscription = subscribedTopics.size() < 5 ? subscribedTopics.asList() : subscribedTopics.subList(0, 5)
        subscription.sort { it.dateCreated }.reverse()

        def readingItemList = ReadingItem.createCriteria().list() {
            projections {
                property("resource")
            }
            and {
                eq("user", userObj)
                eq('isRead', false)
            }
        }

        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)
        render(view: '/home/dashboard', model: [user: userObj, subscriptions: subscription, res: readingItemList, trending: trend1, subscribedTopics: subscribedTopics])
    }

    def viewAllTrendingTopic() {
        User currentUser = User.findByUsername(session['username'])
        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        List<Topic> subscribedTopics = topicService.returnSubscribedTopics()
        render(view: '/home/allTrending', model: [trend: trend1, user: currentUser, subscribedTopics: subscribedTopics])
    }


    def showAllTrendingTopic() {

    }

    def downloadDocument() {
        DocumentResource documentInstance = DocumentResource.get(params.resourceId)
        if (documentInstance == null) {
            flash.message = "Document not found."
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.fileName}\"")
            def file = new File(documentInstance.filePath)
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()
            byte[] buffer = new byte[4096];
            int len;
            while ((len = fileInputStream.read(buffer)) > 0) {
                outputStream.write(buffer, 0, len);
            }
            outputStream.flush()
            outputStream.close()
            fileInputStream.close()
        }
    }

    def subscriptionResources() {
        Topic topic = Topic.get(params.topic)
        List<Resource> resources = Resource.findAllByTopic(topic)
        render(template: '/topic/posts', model: [resources: resources])
    }
}
