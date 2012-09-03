package com.foodible.auth

import com.foodible.user.User

class RegisterCommand {

    String email
    String password
    String firstname
    String lastname
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
        firstname blank: false, nullable: false
        lastname blank: false, nullable: false
    }

}
