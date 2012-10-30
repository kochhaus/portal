G.$('account.profileSettingsPage');

G.account.profileSettingsPage.MainController = G.Controller.create({

    init: function() {
        $("#cities").select2({ maximumSelectionSize: 2, formatSelectionTooBig: function(){
            return 'ożesz ty kurwa'
        } });
    }

});

