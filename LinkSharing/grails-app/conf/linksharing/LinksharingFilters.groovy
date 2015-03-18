package linksharing

class LinksharingFilters {

    def filters = {
        restrictLogin(controller: 'login|assets', action: '*', invert: true) {
            before = {
              /*  if (params.controller == 'user' && params.action == 'showImage') {
//                    return
                }
                if (!session['username']) {
                    redirect(controller: 'login', action: 'index')
                    flash.message = "Please log-in to the system"
//                    return false
                }*/
            }
        }
    }
}
