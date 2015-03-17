package linksharing

class LinksharingFilters {

    def filters = {
        restrictLogin(controller: 'login|assets', action: 'loginHandler|index|register', invert: true) {
            before = {
                if (!session['username']) {
                    redirect(controller: 'login', action: 'index')
                    flash.message = "Please log-in to the system"
                    return false
                }
            }
        }
    }
}
