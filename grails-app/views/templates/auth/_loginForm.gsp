<div id="login-form" class="glass section top-down-animated">
    <g:form>
        <div class="controls">
            <input type="text" class="span4"  name="email" placeholder="${g.message([code: 'auth.form.email.label'])}" >
            <input type="password" class="span4" name="password" placeholder="${g.message([code: 'auth.form.password.label'])}" >
            <input type="submit" class="btn btn-success span4" id="submit" value="${g.message([code: 'auth.form.login.submit.label'])}" >
        </div>
    </g:form>
</div>
