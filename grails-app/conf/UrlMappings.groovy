class UrlMappings {

	static mappings = {

        "/"(controller:  'main', action: 'index')

        /* registration */
        "/register"(controller: 'register', action: 'register')
        "/ajax/registerValidation"(controller: 'register', action: 'ajaxValidation')

        "/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"500"(view:'/error')
	}
}
