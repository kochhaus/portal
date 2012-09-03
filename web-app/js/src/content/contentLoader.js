window.foodible = window.foodible || {}
window.foodible.ContentLoader = window.foodible.ContentLoader || {

    contents: {},

    registerContent: function(name, url, targetId, listenerIds, isLoaded) {
        if(isLoaded === undefined) {
            isLoaded = false;
        }

        var self = this;

        self.contents[name] = {
            url: url,
            target: $('#'+targetId),
            isLoaded: isLoaded
        }

        $.each(listenerIds, function(){
            self.registerClickListener(name, this);
        });
    },

    registerClickListener: function(name, listenerId) {
        var self = this
        $('#'+listenerId).on('click', function(){
            self.load(name);
            return true;
        });
    },

    load: function(name) {
        var self = this;
        console.log(self.contents[name].isLoaded);
        console.log(self.contents[name].url);
        if(!self.contents[name].isLoaded) {
            $.ajax({
                type: "GET",
                url: self.contents[name].url,
                success: function(data){
                    console.log(data);
                    self.contents[name].target.html(data);
                    self.contents[name].isLoaded = true;
                }
            });

        }
        return true;
    }
}

