G.$('login');

G.login.DislayController = G.Controller.create({

    isOpen: false,

    init: function() {
        var that = this;
        that.listen('mainPage.search.hidden', 'open');
        that.listen('menu.sign-in.off', 'close');
    },

    open: function(event){
        var that = this;
        $('#login-form').animate({top: 300}, 200, function() {
            that.trigger('login.form.showed');
        });
    },

    close: function(event){
        var that = this;
        $('#login-form').animate({top: -1000}, 200, function() {
            that.trigger('login.form.hidden');
        });
    }
});