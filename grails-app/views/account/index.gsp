<div class="tabbable tabs-left">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tabContainerAccountPreferences" data-toggle="tab" id="tabAccountPreferences">Preferences</a></li>
        <li><a href="#tabContainerAccountPrivacy" data-toggle="tab" id="tabAccountPrivacy">Privacy</a></li>
        <li><a href="#tabContainerAccountMessaging" data-toggle="tab" id="tabAccountMessaging">Messaging</a></li>
        <li><a href="#tabContainerAccountPayment" data-toggle="tab" id="tabAccountPayment">Payment</a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="tabContainerAccountPreferences"></div>
        <div class="tab-pane" id="tabContainerAccountPrivacy">Privacy</div>
        <div class="tab-pane" id="tabContainerAccountMessaging">Messaging</div>
        <div class="tab-pane" id="tabContainerAccountPayment">Payment</div>
    </div>

    <g:javascript>
        alert('now executing js');
        window.foodible.ContentLoader.registerContent('tabAccountPreferences', "${g.createLink([controller: 'account', action: 'ajaxPreferences'])}", 'tabContainerAccountPreferences', ['tabAccountPreferences']);
        window.foodible.ContentLoader.load('tabAccountPreferences');
        window.foodible.ContentLoader.registerContent('tabAccountPrivacy', "${g.createLink([controller: 'account', action: 'ajaxPrivacy'])}", 'tabContainerAccountPrivacy', ['tabAccountPrivacy']);
        window.foodible.ContentLoader.registerContent('tabAccountMessaging', "${g.createLink([controller: 'account', action: 'ajaxMessaging'])}", 'tabContainerAccountMessaging', ['tabProfile']);
        window.foodible.ContentLoader.registerContent('tabAccountPayment', "${g.createLink([controller: 'account', action: 'ajaxPayment'])}", 'tabContainerAccountPayment', ['tabAccountPayment']);
    </g:javascript>
</div>