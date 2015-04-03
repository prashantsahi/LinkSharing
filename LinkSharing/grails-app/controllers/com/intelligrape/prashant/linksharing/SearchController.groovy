package com.intelligrape.prashant.linksharing

import bootcamp.Visibility

class SearchController {

    def globalSearch() {
        def userObj = User.findByUsername(session['username'])
        List<Topic> trend1 = Topic.list().sort { it.resources.size() }.reverse()
        trend1 = trend1.size() < 5 ? trend1.asList() : trend1.subList(0, 5)

        List<ResourceRating> rating = ResourceRating.createCriteria().list(max: 5, offset: 0) {
            order("score", "desc")
            'resource' {
                'topic' {
                    eq('visibility', Visibility.Public)
                }
            }
        }
        String searchedText = params.searchedText
        List<Resource> resourcesMatched = searchedResources(searchedText)
        render(template: '/search/search', model: [user: userObj, rating: rating, resources: resourcesMatched, trending: trend1, searchedText: searchedText])
    }

    List<Resource> searchedResources(String searchedText) {
        List<Resource> resourcesMatched = []
        List<Resource> resources = Resource.createCriteria().list {
            ilike("description", searchedText + "%")
        }
        List<Topic> topics = Topic.createCriteria().list {
            ilike("name", searchedText + "%")
        }
        List<Resource> topicResources = []
        topics.each {
            topicResources += it.resources
        }

        resourcesMatched = resources + topicResources
        return resourcesMatched
    }
}
