<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
        <g:layoutHead/>

        <g:javascript src="foodible/auth/cookRegistration.js"/>
        <r:require modules="bootstrap"/>
        <r:layoutResources/>
    </head>
    <body>

        <navigation:topNavigationBar />

        <div id="pageContentContainer">
            <g:layoutBody/>
        </div>

        <g:render template="/templates/auth/authContainer" />

        <g:render template="/templates/footer/footer" />

        <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
         <![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <r:layoutResources/>
    </body>
</html>