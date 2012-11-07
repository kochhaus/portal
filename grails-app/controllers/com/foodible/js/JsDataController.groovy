package com.foodible.js

import com.foodible.City
import com.foodible.ServiceType
import com.foodible.http.CacheFor
import com.foodible.http.WithHttpCacheFor

class JsDataController {

    @WithHttpCacheFor(CacheFor.ONE_DAY)
    def mainPage = {
        return [
            cities:City.listOrderByName(cache: true),
            serviceTypes:ServiceType.values()
        ]
    }
}
