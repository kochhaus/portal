package com.foodible.main

class ExtensionTagLib {

    def enumMessage = {attrs, body ->
        final String code = "${attrs.enum.class.name}.${attrs.enum.name()}"
        out << message(code: code)
    }
}
