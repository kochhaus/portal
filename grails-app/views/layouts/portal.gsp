<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
        <g:layoutHead/>

        <g:javascript src="src/auth/CookRegistration.js"/>
        <r:require modules="framework"/>
        <r:layoutResources/>
    </head>
    <body>
        <navigation:topNavigationBar />

        <div id="pageContentContainer">
            %{--<g:layoutBody/>--}%
        </div>

        <g:render template="/templates/footer/footer" />
        <r:layoutResources/>
    </body>
</html>