package linksharing

class LinksharingFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
         //       println("from before   ")
        //        render("before filter")
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }

    /*    myFilter(controller: 'demo',action: '*' )
                {
                    before={
                        println("before")
                    }
                    after={

                        println("afterrrrrrrrrr")
                    }
                }
      */
        myUri(uri:'/demo/**')
                {
                    before={
                        println("from before demo1 action ")
                    }
                    after={
                        println("from before demo1 action ")

                    }
                }

    }

}
