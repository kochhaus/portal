package com.foodible.main

import com.foodible.js.I18NDataProvider

class JavaScriptTagLib {

    private static final String OVERLAY_CSS_CLASS = ' overlay '

    static namespace = 'js'

    I18NDataProvider i18NDataProvider

    def inOverlayLink = {attrs, body ->
        attrs['class'] ? (attrs['class'] += OVERLAY_CSS_CLASS) : (attrs['class'] = OVERLAY_CSS_CLASS)
        out << g.link(attrs, body)
    }

    def i18nScript = {attrs, body ->
        final String link = g.createLink(controller: 'i18N', params: [version:i18NDataProvider.code])
        out << "<script type=\"text/javascript\" src=\"${link}\"></script>"
    }
}
