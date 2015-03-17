package linksharing

class LinksharingFilters {

    def filters = {
        restrictLogin(controller: 'login|assets', action: 'loginHandler|index|register', invert: true) {
            before = {
                println params
                if(params.controller=='user'&&params.action=='showImage')
                {
                    println 'inside if++++++++++++++++++++++++++++++++++'
                    return
                }
                if (!session['username']) {
                    redirect(controller: 'login', action: 'index')
                    flash.message = "Please log-in to the system"
                    return false
                }
            }
        }
    }
}
