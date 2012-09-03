package com.foodible.main

class MainController {

    def index = {
    }

    def ajaxRegisterTemplate = {
        render(template: '/templates/auth/registrationContainer')
    }

    def ajaxLoginTemplate = {
        render(template: '/templates/auth/loginContainer')
    }
}
