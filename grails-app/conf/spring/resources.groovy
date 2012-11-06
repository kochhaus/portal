import com.foodible.grails.context.support.CustomPluginAwareResourceBundleMessageSource
import com.foodible.http.WithHttpCacheForService
import com.foodible.js.I18NDataProvider

beans = {

    messageSource(CustomPluginAwareResourceBundleMessageSource){
        basenames = ["WEB-INF/grails-app/i18n/messages", "WEB-INF/grails-app/i18n/javascript"]
    }

    i18NDataProvider(I18NDataProvider){bean -> bean.autowire = 'byName' }
    withHttpCacheForService(WithHttpCacheForService)
}

