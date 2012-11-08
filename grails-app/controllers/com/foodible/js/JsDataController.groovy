package com.foodible.js

import com.foodible.http.CacheFor
import com.foodible.http.WithHttpCacheFor
import com.foodible.service.City
import com.foodible.service.ServiceType

class JsDataController {

    @WithHttpCacheFor(CacheFor.ONE_DAY)
    def mainPage = {
        return [
            cities:City.listOrderByName(cache: true),
            serviceTypes:ServiceType.values()
        ]
    }
}
