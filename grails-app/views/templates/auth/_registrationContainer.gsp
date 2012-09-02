<div id="registrationContainer" class="row">
    <div class="span4 offset7">
        <g:form controller="register" action="register">
            <div class="controls">
                <label class="radio">
                    <input type="radio" name="authority" value="ROLE_COOK" checked>
                    <g:message code="auth.form.radio.cook.label"/>
                </label>
                <label class="radio">
                    <input type="radio" name="authority" value="ROLE_USER" checked>
                    <g:message code="auth.form.radio.user.label"/>
                </label>
            </div>

            <div class="controls">
                <input type="text" class="span4" name="email" placeholder="${g.message([code: 'auth.form.email.label'])}" >
                <input type="password" class="span4" name="password" placeholder="${g.message([code: 'auth.form.password.label'])}" >
                <input type="text" class="span4" name="firstname" placeholder="${g.message([code: '''auth.form.firstname.label'''])}">
                <input type="text" class="span4" name="lastname" placeholder="${g.message([code: 'auth.form.lastname.label'])}">
                <input type="submit" class="btn btn-success span4" id="submit" value="${g.message([code: 'auth.form.registration.submit.label'])}" >
            </div>
        </g:form>
    </div>
</div>