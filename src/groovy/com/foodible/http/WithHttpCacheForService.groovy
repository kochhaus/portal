package com.foodible.http

import org.codehaus.groovy.grails.commons.GrailsApplication
import org.springframework.beans.factory.annotation.Autowired

class WithHttpCacheForService {

    public static final int NO_CACHE = -1

    private static final String DEFAULT_ACTION  = 'index'

    private static final Map<String, Long> CACHE = [:]

    @Autowired
    GrailsApplication grailsApplication

    public void init(){
        grailsApplication.controllerClasses.each {controller ->
            final List elements = []
            elements.addAll(controller.clazz.declaredFields)
            elements.addAll(controller.clazz.methods)

            elements.each { element ->
                final WithHttpCacheFor annotation = element.getAnnotation(WithHttpCacheFor)
                if (annotation) {
                    final String key = buildKey(controller.name, element.name)
                    CACHE[key] = annotation.value().toLong()
                }
            }
        }
    }

    public Long getCacheTime(final String controllerName, final String methodName){
        final String key = buildKey(controllerName, methodName ?: DEFAULT_ACTION)
        return CACHE[key] ?: NO_CACHE
    }

    private String buildKey(final String controllerName, final String methodName){
        return "$controllerName#$methodName".toLowerCase()
    }
}
