import com.intelligrape.prashant.linksharing.User

class BootStrap {

    def bootstrapService
    def init = { servletContext ->
        if (!User.count()) {

            bootstrapService.createUser()
            bootstrapService.topics()
            bootstrapService.resources()
//        bootstrapService.readingItems()
//       if(!ResourceRating.count())
            bootstrapService.ratings()
        }
    }
    def destroy = {
    }
}
