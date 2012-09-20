G.$('auth');

G.auth.MainController = G.Controller.create({

    currentForm: null,

    init: function() {
        var that = this;
        that.listen('auth.loginForm.show', 'openLoginForm');
        that.listen('auth.loginForm.hide', 'hideLoginForm');
        that.listen('auth.registrationForm.show', 'openRegistrationForm');
        that.listen('auth.registrationForm.hide', 'hideRegistrationForm');
    },

    openLoginForm: function(event){
        this._openForm('#login-form', 'auth.loginForm.shown');
    },

    hideLoginForm: function(event){
        this._hideForm('#login-form', 'auth.loginForm.hidden');
    },

    openRegistrationForm: function(event){
        this._openForm('#register-form', 'auth.registrationForm.shown');
    },

    hideRegistrationForm: function(event){
        this._hideForm('#register-form', 'auth.registrationForm.hidden');
    },

    _openForm: function(formId, eventName){
        var that = this;
        var showForm = function(){
            $(formId).animate({top: 0}, 200, function() {
                that.currentForm = this;
                that.trigger(eventName);
            });
        };

        if (this.currentForm){
            $(this.currentForm).animate({top: -1000}, 200, function() {
                showForm.call(null);
            });
        } else {
            showForm.call(null);
        }
    },

    _hideForm: function(formId, eventName){
        var that = this;
        $(formId).animate({top: -1000}, 200, function() {
            that.currentForm = null;
            that.trigger(eventName);
        });
    }
});