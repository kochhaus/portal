import grails.util.Environment
import com.foodible.auth.Authority
import com.foodible.user.Role
import com.foodible.user.User

class BootStrap {

    def userService

    def init = { servletContext ->
        if (Environment.current == Environment.DEVELOPMENT){
            Authority.ALLOWED_AUTHORITIES.each {String authority ->
                if (!Role.findByAuthority(authority)){
                    new Role(authority: authority).save()
                }
            }

            if (!User.findByEmail('admin@example.com')){
                userService.createUser('admin@example.com', 'admin', Authority.ADMIN, 'admin', 'admin', true)
            }

            if (!User.findByEmail('cook@example.com')){
                userService.createUser('cook@example.com', 'cook', Authority.COOK, 'cook', 'cook', true)
            }

            if (!User.findByEmail('user@example.com')){
                userService.createUser('user@example.com', 'user', Authority.USER, 'user', 'user', true)
            }
        }
    }
    def destroy = {
    }
}
