import com.foodible.auth.Authority
import com.foodible.service.City
import com.foodible.service.CustomersLimitation
import com.foodible.service.HourlyRate
import com.foodible.service.KitchenType
import com.foodible.user.Role
import com.foodible.user.User
import grails.util.Environment

class BootStrap {

    def userService

    def withHttpCacheForService

    def init = { servletContext ->
        if (Environment.current == Environment.DEVELOPMENT){
            if (!City.findByName('Berlin')){
                new City(name: 'Berlin').save()
            }

            if (!City.findByName('Paris')){
                new City(name: 'Paris').save()
            }

            if (!City.findByName('Warsaw')){
                new City(name: 'Warsaw').save()
            }

            if (!CustomersLimitation.findByBottomAndTop(1, 3)){
                new CustomersLimitation(bottom: 1, top: 3).save()
            }

            if (!CustomersLimitation.findByBottomAndTop(3, 6)){
                new CustomersLimitation(bottom: 3, top: 6).save()
            }

            if (!CustomersLimitation.findByBottomAndTop(6, 10)){
                new CustomersLimitation(bottom: 6, top: 10).save()
            }

            if (!HourlyRate.findByValue(20)){
                new HourlyRate(value: 20).save()
            }

            if (!HourlyRate.findByValue(40)){
                new HourlyRate(value: 40).save()
            }

            if (!HourlyRate.findByValue(60)){
                new HourlyRate(value: 60).save()
            }

            (1..20).each {
                def name = "kitchen type ${it}"
                if (!KitchenType.findByName(name)){
                    new KitchenType(name: name).save()
                }
            }

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

        withHttpCacheForService.init()
    }
    def destroy = {
    }
}
