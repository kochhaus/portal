G.$('mainMenu');

G.mainMenu.MainController = G.Controller.create({

    activeNode:null,

    init: function() {
        var that = this;
        $('#main-menu .sign-up').click(function(){that.clickSingUp($(this))});
        $('#main-menu .sign-in').click(function(){that.clickSingIn($(this))});
        this.activeNode = $('#main-menu li.active');
    },

    clickSingUp: function(element){
        this.handleClick(element);
    },

    clickSingIn: function(element){
        this.handleClick(element);
    },

    handleClick: function(element){
        var elementName = element.attr('class');
        var parent = element.closest('li');

        if (this.shouldActiveNodeBeCleanUp(parent)){
            this.activeNode.removeClass('active');
        }

        parent.hasClass('active') ? this.trigger('mainMenu.' + elementName + '.off') : this.trigger('mainMenu.' + elementName + '.on');
        parent.toggleClass('active');
        this.activeNode = parent;
    },

    shouldActiveNodeBeCleanUp: function(parent){
        return parent && this.activeNode && this.activeNode[0] != parent[0] && this.activeNode.hasClass('active')
    }
});