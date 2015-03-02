package com.intelligrape.prashant.linksharing

class LoginController {
    static defaultAction = "index"

    def index() {
        List<Resource> resources = Resource.list(max: 5,offset: 0,order: "desc",sort:"id" )
        def rating = ResourceRating.createCriteria().list (max: 5,offset: 0)
                {
                    eq("score",5)
                    order("score","desc")

                }
        println "top 5 ratings : $rating \n"
        println("top resources : $resources \n")
        render(view: "login1", model: [res:resources,rating:rating])
    }

    def dash() {
        render(view: "/user/dashboard")

    }
}
