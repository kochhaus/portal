<div class="navbar navbar-static" style="margin-bottom: 0">
    <div class="navbar-inner" style="height: 48px; border-radius: 0;">
        <div class="container">
            <a class="btn btn-large span2 btn-info pull-right" id="btnAuthLogin"><g:message code="auth.btn.login.caption"/></a>
            <a class="btn btn-large span2 btn-info pull-right" id="btnAuthRegistration"><g:message code="auth.btn.register.caption"/></a>
            <a class="btn btn-large span2 btn-info pull-right" id="btnAuthCookRegistration"><g:message code="auth.btn.registerCook.caption"/></a>
        </div>
    </div>
</div>
<g:javascript>
$('#btnAuthRegistration').on('click', function(){
    window.foodible.FoodibleCookRegistration.show();
});
</g:javascript>