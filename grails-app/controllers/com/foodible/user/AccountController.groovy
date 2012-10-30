package com.foodible.user

import com.foodible.City

class AccountController {

    static defaultAction = 'profileSettings'

    def profileSettings = {
        return [
            cities: City.list(sort:'name', order: 'asc')
        ]
    }
}
