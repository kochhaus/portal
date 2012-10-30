import com.foodible.grails.context.support.CustomPluginAwareResourceBundleMessageSource
import com.foodible.http.WithHttpCacheForService

beans = {

    messageSource(CustomPluginAwareResourceBundleMessageSource){
        basenames = ["WEB-INF/grails-app/i18n/messages", "WEB-INF/grails-app/i18n/javascript"]
    }

    withHttpCacheForService(WithHttpCacheForService)
}

