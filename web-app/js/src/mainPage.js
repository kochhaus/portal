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
        var cities = [ {
        	text : "City 1",
        	value : 1,
        	selected : false
        }, {
        	text : "City 2",
        	value : 2,
        	selected : false
        }, {
        	text : "City 3",
        	value : 3,
        	selected : false
        } ];

        $('#city').ddslick({
        	data : cities,
        	background : '#000000',
        	width : 336,
        	selectText : "Select your city",
        	onSelected : function(selectedData) {
        	}
        });

        var types = [ {
        	text : "Type 1",
        	value : 1,
        	selected : false
        }, {
        	text : "Type 2",
        	value : 2,
        	selected : false
        }, {
        	text : "Type 3",
        	value : 3,
        	selected : false
        } ];

        $('#type').ddslick({
        	data : types,
        	background : '#000000',
        	width : 376,
        	selectText : "Select type of service",
        	onSelected : function(selectedData) {
        	}
        });
    }
});

