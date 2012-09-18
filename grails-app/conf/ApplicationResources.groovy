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

    framework {
        dependsOn 'core, ember'
        resource url: 'js/bootstrap.js'
    }

    mainPage {
        dependsOn 'framework'

        resource url: 'css/main.css'

        resource url: 'js/libs/jquery.backstretch.min.js'
        resource url: 'js/libs/select.js'
        resource url: 'js/src/login.js'
        resource url: 'js/src/mainMenu.js'
        resource url: 'js/src/mainPage.js'
    }
}