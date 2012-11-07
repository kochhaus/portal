G.$('mainPage');

G.mainPage.MainPageController = G.Controller.create({

    searchHidden: false,

    init: function() {
        var that = this;
        this.initSearchSection();
        this.initAboutSection();
        this.listen('mainMenu.sign-in.on', 'hideSearchLogin');
        this.listen('mainMenu.sign-in.off', function(){that.trigger('auth.loginForm.hide')});
        this.listen('auth.loginForm.hidden', 'showSearch');

        this.listen('mainMenu.sign-up.on', 'hideSearchRegister');
        this.listen('mainMenu.sign-up.off', function(){that.trigger('auth.registrationForm.hide')});
        this.listen('auth.registrationForm.hidden', 'showSearch');
    },

    hideSearchRegister: function(){
        this.hideSearch('auth.registrationForm.show');
    },

    hideSearchLogin: function(){
        this.hideSearch('auth.loginForm.show');
    },

    hideSearch: function(event){
        if (this.searchHidden){
            this.trigger(event);
            return;
        }

        var that = this;
        $('#search').animate({top: -1000}, 200, function() {
            that.searchHidden = true;
            that.trigger('mainPage.search.hidden');
            that.trigger(event);
        });

    },

    showSearch: function(){
        if (!this.searchHidden){
            return;
        }

        var that = this;
        $('#search').animate({top: 0}, 200, function() {
            that.searchHidden = false;
            that.trigger('mainPage.search.shown');
        });
    },

    initAboutSection: function(){
        var viewPortHeight = $(window).height();
        var offset = viewPortHeight - 531 - 65;
        $('#about').css('margin-top', offset);
    },

    initSearchSection: function(){
        $('#city').ddslick({
        	data : G.MainPage.cities,
        	background : '#000000',
        	width : 336,
        	selectText : G.I18N['javascript.selectYourCity'],
        	onSelected : function(selectedData) {}
        });

        $('#type').ddslick({
        	data : G.MainPage.serviceTypes,
        	background : '#000000',
        	width : 376,
        	selectText : G.I18N['javascript.selectTypeOfService'],
        	onSelected : function(selectedData) {}
        });
    }
});

