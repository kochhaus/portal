package com.foodible.user

import com.foodible.service.City
import com.foodible.service.CustomersLimitation
import com.foodible.service.HourlyRate
import com.foodible.service.KitchenType

class CookController {

    static defaultAction = 'profileSettings'

    def profileSettings = {
       return [
            cities:City.listOrderByName(cache: true),
            customersLimitations: CustomersLimitation.listOrderByBottom(cache: true),
            hourlyRates: HourlyRate.listOrderByValue(cache: true),
            kitchenTypes: KitchenType.listOrderByName(cache: true)
        ]
    }
}
