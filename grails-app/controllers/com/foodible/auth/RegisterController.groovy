package com.foodible.auth

import com.foodible.user.User
import com.foodible.user.UserEnableResult
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class RegisterController  {

    def userService
    def springSecurityService

    def register = { RegisterCommand command ->

        if ( command.hasErrors() ) {
            render view: 'index', model: [command: command]
            return
        }

        // create user
        User user = userService.createUser(command.email, command.password, command.authority, command.firstname, command.lastname, false)

        // create DOI
        userService.sendDOIMail(user)

        // todo: redirect to welcome page
        render view: 'index', model: [emailSent: true]
    }

    def ajaxSendDOIMail = {

        if(springSecurityService.isLoggedIn()) {
            User user = (User)springSecurityService.currentUser
            userService.sendDOIMail(user)
        }

    }

    def ajaxValidation = { RegisterCommand command ->
        if (command.hasErrors()) {
            render view: 'index', model: [command: command]
            return
        }
    }

    def enable = {

        String token = params.token
        if (!token) {
            // todo: render enable error page
        }

        UserEnableResult bean = userService.enableAccount(params.token)

    }

    /*
    def verifyRegistration = {

        def conf = SpringSecurityUtils.securityConfig
        String defaultTargetUrl = conf.successHandler.defaultTargetUrl

        String token = params.t

        def registrationCode = token ? RegistrationCode.findByToken(token) : null
        if (!registrationCode) {
            flash.error = message(code: 'spring.security.ui.register.badCode')
            redirect uri: defaultTargetUrl
            return
        }

        def user
        RegistrationCode.withTransaction { status ->
            user = lookupUserClass().findByUsername(registrationCode.username)
            if (!user) {
                return
            }
            user.accountLocked = false
            user.save(flush:true)
            def UserRole = lookupUserRoleClass()
            def Role = lookupRoleClass()
            for (roleName in conf.ui.register.defaultRoleNames) {
                UserRole.create user, Role.findByAuthority(roleName)
            }
            registrationCode.delete()
        }

        if (!user) {
            flash.error = message(code: 'spring.security.ui.register.badCode')
            redirect uri: defaultTargetUrl
            return
        }

        springSecurityService.reauthenticate user.username

        flash.message = message(code: 'spring.security.ui.register.complete')
        redirect uri: conf.ui.register.postRegisterUrl ?: defaultTargetUrl
    }
    */

    static final passwordValidator = { String password, command ->
        if (!checkPasswordMinLength(password, command) ||
                !checkPasswordMaxLength(password, command) ||
                !checkPasswordRegex(password, command)) {
            return 'command.password.error.strength'
        }
    }

    static boolean checkPasswordMinLength(String password, command) {
        ConfigObject conf = SpringSecurityUtils.securityConfig

        int minLength = conf.ui.password.minLength instanceof Number ? conf.ui.password.minLength : 8

        password && password.length() >= minLength
    }

    static boolean checkPasswordMaxLength(String password, command) {
        ConfigObject conf = SpringSecurityUtils.securityConfig

        int maxLength = conf.ui.password.maxLength instanceof Number ? conf.ui.password.maxLength : 64

        password && password.length() <= maxLength
    }

    static boolean checkPasswordRegex(String password, command) {
        ConfigObject conf = SpringSecurityUtils.securityConfig

        // at least 1 small Char, 1 capital Char and 1 Number
        String passValidationRegex = '^\\w*(?=\\w*\\d)(?=\\w*[a-z])(?=\\w*[A-Z])\\w*$'

        password && password.matches(passValidationRegex)
    }

    static final password2Validator = { value, command ->
        if (command.password != command.password2) {
            return 'command.password2.error.mismatch'
        }
    }
}
