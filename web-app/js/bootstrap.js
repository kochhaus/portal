var G = G || {};

/**
 * Allows to create namespace, e.g.: G.$('foo.bar.bas') == G.foo.bar.bas
 * @type {*}
 */
G.$ = (function(namespace){
    var DELIMITER = '.';
    return function(namespacePath){
        var root = namespace;
        if (!!namespacePath){
            var parts = namespacePath.split(DELIMITER), index;
            for (index in parts) {
                if (!root[parts[index]]){
                    root[parts[index]] = {};
                }

                root = root[parts[index]];
            }
        }
        return root;
    }
})(G);

/**
 * Controller object encapsulation event bus.
 * @type {*}
 */
G.Controller = (function(){
    var eventBus = Ember.Object.create(Ember.Evented, {});
    return Ember.Object.extend({
        listen: function(eventName, listener){
            eventName && eventBus.on(eventName, this, listener);
        },
        trigger: function(eventName, eventObject){
            Ember.Logger.log('triggering event: ' + eventName + ' (' + eventObject + ')');
            eventBus.trigger(eventName, eventObject)
        }
    });
})();





