G.$('mainPage');

G.mainPage.MainPageController = G.Controller.create({

    init: function() {
        this.initSearchSection();
        this.initAboutSection();
        this.listen('menu.sign-in.on', 'hideSearch');
        this.listen('login.form.hidden', 'showSearch');
    },

    hideSearch: function(){
        var that = this;
        $('#search').animate({top: -1000}, 200, function() {
            that.trigger('mainPage.search.hidden');
        });
    },

    showSearch: function(){
        var that = this;
        $('#search').animate({top: 0}, 200, function() {
            that.trigger('mainPage.search.showed');
        });
    },

    initAboutSection: function(){
        var vieportHeight = $(window).height();
        var offset = vieportHeight - 531 - 65;
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

