package com.foodible.auth

import com.foodible.user.User

class RegisterCommand {

    String email

    String password

    String firstName

    String lastName

    String authority

    static constraints = {
        email blank: false, nullable: false, email: true, validator: { value, command ->
            if(value && User.findByEmail(value)) {
                'registerCommand.email.unique'
            }
        }
        password blank: false, nullable: false, validator: RegisterController.passwordValidator
        authority blank: false, nullable: false, validator: { value, command ->
            if(!Authority.ALLOWED_USER_AUTHORITIES.contains(value)) {
                'registerCommand.authority.corrupted'
            }
        }
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
    }

}
