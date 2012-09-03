package com.foodible.user

class AccountController {

    def ajaxIndex = {
        render(view: 'index', status: 200)
    }

    def ajaxPreferences = {
        render(view: 'preferences', status: 200)
    }

    def ajaxPayment = {
        render(view: 'payment', status: 200)
    }

    def ajaxPrivacy = {
        render(view: 'privacy', status: 200)
    }

    def ajaxMessaging = {
        render(view: 'messaging', status: 200)
    }
}
