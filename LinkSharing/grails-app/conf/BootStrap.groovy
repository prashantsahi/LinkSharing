import bootcamp.Seriousness
import bootcamp.Visibility
import com.intelligrape.prashant.linksharing.*

class BootStrap {

        def bootstrapService
    def init = { servletContext ->
        bootstrapService.createUser()
        bootstrapService.topics()
        bootstrapService.resources()
//        bootstrapService.readingItems()
        bootstrapService.ratings()
    }

    def destroy = {
    }

}
