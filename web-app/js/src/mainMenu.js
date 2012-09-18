G.$('mainMenu');

G.mainMenu.DislayController = G.Controller.create({

    init: function() {
        var that = this;
        $('#sign-in').click(function(){that.click($(this))})
    },

    click: function(element){
        var parent = element.closest('li');
        parent.hasClass('active') ? this.trigger('menu.sign-in.off') : this.trigger('menu.sign-in.on');
        parent.toggleClass('active');
    }
});