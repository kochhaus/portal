G.$('account.profileSettingsPage');

G.account.profileSettingsPage.MainController = G.Controller.create({

    init: function() {
        this.initSearchSection();
        this.initCheckbox();
    },

    initSearchSection: function(){
        $('#city').ddslick({
            data : G.CookProfileSettings.cities,
            background : '#ededed',
            width : 440,
            selectText : G.I18N['javascript.selectYourCity']
        });

        $('#maxPeople').ddslick({
        	data : G.CookProfileSettings.customersLimitations,
        	background : '#ededed',
        	width : 440,
        	selectText : G.I18N['javascript.selectMaxPeople']
        });

        $('#rate').ddslick({
        	data :  G.CookProfileSettings.hourlyRates,
        	background : '#ededed',
        	width : 440,
        	selectText : G.I18N['javascript.selectYourRate']
        });
    },

    initCheckbox: function(){
        $('.checkbox').click(function(){
        	$this = $(this);
        	if ($this.hasClass('on')){
        		$this.find('input').val(0);
        		$this.removeClass('on');
        	} else {
        		$this.addClass('on');
        		$this.find('input').val(1);
        	}
        });
    }
});

