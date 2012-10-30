package com.foodible.grails.context.support

import org.codehaus.groovy.grails.context.support.PluginAwareResourceBundleMessageSource

class CustomPluginAwareResourceBundleMessageSource extends PluginAwareResourceBundleMessageSource{

    public Map<String, String> getAllKeys(final String keyPrefix, final Locale locale = null){
        final Locale currentLocale = locale ?: Locale.getDefault()
        final Set<String> keys = getMergedProperties(currentLocale)?.properties?.keySet()
        return keys.grep {key ->  key ==~ /^${keyPrefix}.+/}.inject([:]){final Map<String, String> map, final String key ->
            map[key] = getMessage(key, null, currentLocale)
            return map
        }
    }
}
