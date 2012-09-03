modules = {
    core {
        resource url: 'http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
    }

    ember {
        resource url: 'js/libs/handlebars.js'
        resource url: 'js/libs/ember.js'
    }

    colorbox {
        dependsOn 'core'
        resource url: 'js/libs/jquery.colorbox-min.js'
        resource url: 'css/colorbox.css'
    }

    framework {
        dependsOn 'core, ember, bootstrap, colorbox'
        resource url: 'js/bootstrap.js'
        resource url: 'js/src/overlay.js'
    }

    bootstrap {
        dependsOn 'core'
        resource url: 'bootstrap/css/bootstrap-responsive.css'
        resource url: 'bootstrap/css/bootstrap.min.css'
        resource url: 'http://html5shim.googlecode.com/svn/trunk/html5.js', wrapper: { s -> "<!--[if IE 9]>$s<![endif]-->" }
        resource url: 'bootstrap/js/bootstrap.js'
    }
}