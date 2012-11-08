modules = {
    core {
        dependsOn 'jquery'
        resource url: 'http://yui.yahooapis.com/3.6.0/build/cssreset/cssreset-min.css'
        resource url: 'css/base.css'
    }

    ember {
        dependsOn 'core'
        resource url: 'js/libs/handlebars.js'
        resource url: 'js/libs/ember.js'
    }

    select2 {
        resource url: 'modules/select2/select2.min.js'
        resource url: 'modules/select2/select2.css'
    }

    framework {
        dependsOn 'core, ember'
        resource url: 'js/init.js'
    }

    mainPage {
        dependsOn 'framework'
        resource url: 'css/main.css'
        resource url: 'js/libs/jquery.backstretch.min.js'
        resource url: 'js/libs/select.js'
        resource url: 'js/src/auth.js'
        resource url: 'js/src/mainMenu.js'
        resource url: 'js/src/mainPage.js'
    }

    profileSettings {
        dependsOn 'framework'
        resource url: 'css/account.css'
        resource url: 'js/src/auth.js'
        resource url: 'js/libs/select.js'
        resource url: 'js/src/mainMenu.js'
        resource url: 'js/src/account/profileSettingsPage.js'
    }
}