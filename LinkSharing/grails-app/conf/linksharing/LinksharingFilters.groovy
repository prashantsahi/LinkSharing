package linksharing

class LinksharingFilters {

    def filters = {
        applicationFilter(controller: '*',action: '*' )
                {
                    before={
                        log.info("request params: ${params}")
                    }
                    after={

//                        println("afterrrrrrrrrr")
                    }
                }

        restrictLogin(controller:'login|assets', action:'loginHandler|index|register',invert :true) {
            before = {

//              println("controller: ${params.controller} , action: ${params.action}")
                if(!session['username'])
                {
                    redirect(controller: 'login',action: 'index')
                    flash.message="Please log-in to the system"
                    return false
                }
            }
            after = { Map model ->
//                println "from after filter"

            }
            afterView = { Exception e ->
//                println("from after view filter")
            }
        }


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
