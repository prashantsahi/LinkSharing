package com.intelligrape.prashant.linksharing

import bootcamp.Visibility
import grails.plugin.springsecurity.annotation.Secured
import linksharing.SearchService
@Secured(['ROLE_ADMIN','ROLE_USER'])
class SearchController {
    SearchService searchService

    def globalSearch() {
        def userObj = User.findByUsername(session['username'])
        def trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)

        def rating = ResourceRating.createCriteria().list(max: 5, offset: 0) {
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        String searchedText = params.searchedText
        def resourcesMatched = searchService.searchGlobalResources(searchedText)
        render(template: '/search/search', model: [user: userObj, rating: rating, resources: resourcesMatched, trending: trend1, searchedText: searchedText])
    }

    def searchInbox(String searchedText) {
        def resources = searchService.searchInboxResources(searchedText)
        render(template: '/home/inbox', model: [resources: resources])
    }

    def searchPost(String searchedText ){
        def resources = searchService.searchPostsResources(searchedText)
        render(template:'/topic/posts', model:[resources: resources])
    }
}
