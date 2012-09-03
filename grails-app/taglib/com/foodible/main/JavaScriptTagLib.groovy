package com.foodible.main

class JavaScriptTagLib {

    private static final String OVERLAY_CSS_CLASS = ' overlay '

    static namespace = 'js'

    def inOverlayLink = {attrs, body ->
        attrs['class'] ? (attrs['class'] += OVERLAY_CSS_CLASS) : (attrs['class'] = OVERLAY_CSS_CLASS)
        out << g.link(attrs, body)
    }
}
