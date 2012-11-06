package com.foodible.js

import com.foodible.http.CacheFor
import com.foodible.http.WithHttpCacheFor

class I18NController {

    I18NDataProvider i18NDataProvider

    @WithHttpCacheFor(CacheFor.EVER)
    def index = {
        [values: i18NDataProvider.model]
    }
}
