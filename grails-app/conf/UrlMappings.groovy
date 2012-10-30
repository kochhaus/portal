class UrlMappings {

	static mappings = {

        "/"(controller:  'main', action: 'index')

        /* registration */
        "/register"(controller: 'register', action: 'register')
        "/enableAccount/$token"(controller: 'register', action: 'enable')
        "/ajax/registerValidation"(controller: 'register', action: 'ajaxValidation')
        "/ajax/sendDOIMail"(controller: 'register', action: 'ajaxSendDOIMail')

        /* profile */
        "/account"(controller: 'account')
        "/account/profile-settings"(controller: 'account', action: 'profileSettings')

        /* other */
        '/js/j18n'(controller: 'i18N')

        "/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"500"(view:'/error')
	}
}
