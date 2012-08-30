package com.foodible.main

class NavigationTagLib {

    static namespace = "navigation"

    /**
     * Dependency injection for the springSecurityService.
     */
    def springSecurityService

    def topNavigationBar = {
        if (springSecurityService.isLoggedIn()) {
            out << render(template: '/templates/navigation/topNavigationBar')
        } else {
            out << render(template: '/templates/navigation/topNavigationBar')
        }
    }

}
