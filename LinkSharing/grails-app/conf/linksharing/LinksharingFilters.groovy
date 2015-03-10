package linksharing

class LinksharingFilters {

    def filters = {
        all(controller:'login|assets', action:'loginHandler|index|register',invert :true) {
            before = {
                println "session username :  "+session['username']
                println("controller: ${params.controller} , action: ${params.action}")
                if(!session['username'])
                {
                    redirect(controller: 'login',action: 'index')
                    flash.message="Please log-in to the system"
                    return true
                }
            }
            after = { Map model ->
//                println "from after filter"

            }
            afterView = { Exception e ->
//                println("from after view filter")
            }
        }



//        home(controller: 'home')

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
//        myUri(uri:'/demo/**')
//                {
//                    before={
//                        println("from before demo1 action ")
//                    }
//                    after={
//                        println("from before demo1 action ")
//
//                    }
//                }
//
   }

}
