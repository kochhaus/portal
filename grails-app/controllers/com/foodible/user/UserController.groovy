package com.foodible.user

class UserController {

    def index() { }

    def ajaxProfile = {
        render(view: 'profileContent', status: 200)
    }


}
