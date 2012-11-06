package com.foodible.js

import com.foodible.grails.context.support.CustomPluginAwareResourceBundleMessageSource

class I18NDataProvider {

    private static final String PROPERTY_PREFIX = 'javascript'

    CustomPluginAwareResourceBundleMessageSource messageSource

    @Lazy
    public Map<String, String> model = messageSource.getAllKeys(PROPERTY_PREFIX)

    public String getCode(){
        return model.hashCode().toString()
    }
}
