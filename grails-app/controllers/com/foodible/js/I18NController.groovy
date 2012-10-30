package com.foodible.js

import com.foodible.grails.context.support.CustomPluginAwareResourceBundleMessageSource
import com.foodible.http.CacheFor
import com.foodible.http.WithHttpCacheFor
import org.springframework.web.servlet.support.RequestContextUtils

class I18NController {

    private static final String PROPERTY_PREFIX = 'javascript'

    CustomPluginAwareResourceBundleMessageSource messageSource

    @WithHttpCacheFor(CacheFor.EVER)
    def index = {
        [values: messageSource.getAllKeys(PROPERTY_PREFIX, RequestContextUtils.getLocale(request))]
    }
}
