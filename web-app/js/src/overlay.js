G.$('overlay');

G.overlay.DislayController = G.Controller.create({

    isOpen: false,

    init: function() {
        var that = this;
        that.listen('overlay.open', 'open');
        that.listen('overlay.close', 'close');
        $('.overlay').colorbox({

        });
    },

    open: function(event){
        var that = this;
        $.colorbox({html:"<h1>Welcome</h1>", onOpen:function(){
            that.isOpen = true;
        }});

    },

    close: function(event){
        var that = this;
        $.colorbox.close({onClosed:function(){
            that.isOpen = false;
        }});
    }
});