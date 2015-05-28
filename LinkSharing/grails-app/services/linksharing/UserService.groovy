package linksharing

import com.intelligrape.prashant.linksharing.Role
import com.intelligrape.prashant.linksharing.User
import com.intelligrape.prashant.linksharing.UserRole
import grails.converters.JSON
import grails.plugin.springsecurity.oauth.OAuthToken
import grails.transaction.Transactional

@Transactional
class UserService {
    def oauthService
    def springSecurityService
    def grailsApplication

    User createNewUser(def googleAccessToken, def provider) {
        def providerService = grailsApplication.mainContext.getBean("${provider}SpringSecurityOAuthService")
        OAuthToken oAuthToken1 = providerService.createAuthToken(googleAccessToken)
        User user = User.findByEmail(oAuthToken1.socialId)
        def response = oauthService.getGoogleResource(googleAccessToken, 'https://www.googleapis.com/oauth2/v1/userinfo')
        def userDetail = JSON.parse(response.body)
        if (!user) {
            user = new User(email: userDetail?.email, username: userDetail.name, password: "55555", photoPath: userDetail.picture, firstName: userDetail.given_name, lastName: userDetail.family_name, admin: "false", active: "true")
            user.save(failOnError: true, flush: true)
            println(user.properties)
            if (user) {
                println "USER :------------------------------>>>>>>>>>>>>>>"+user
                new UserRole(user: user, role: Role.findByAuthority('ROLE_USER')).save(flush: true)
            }
        }
    }

    def updateUserProfile(params) {
        User current = springSecurityService.currentUser
        def file = params.file
        current.properties = params
        if (file) {
            current.photoPath = grailsApplication.config.imageUploadFolder + file.originalFilename
        }
        file.transferTo(new File(current.photoPath))
        if (current.validate() && current.save(flush: true, failOnError: true)) {
            return true
        }
    }
}
