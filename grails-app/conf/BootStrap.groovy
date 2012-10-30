import com.foodible.City
import com.foodible.auth.Authority
import com.foodible.user.Role
import com.foodible.user.User
import grails.util.Environment

class BootStrap {

    def userService

    def withHttpCacheForService

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

            if (!City.findByName('Berlin')){
                new City(name: 'Berlin').save()
            }

            if (!City.findByName('Paris')){
                new City(name: 'Paris').save()
            }

            if (!City.findByName('Warsaw')){
                new City(name: 'Warsaw').save()
            }
        }

        withHttpCacheForService.init()
    }
    def destroy = {
    }
}
