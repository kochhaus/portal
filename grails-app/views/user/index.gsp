<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="portal"/>

    <g:javascript src="foodible/content/contentLoader.js"/>
</head>

<body>
${g.link([controller: 'user', action: 'ajaxGetMailContainer'])}
<div class="container">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tabContainerDashBoard" data-toggle="tab" id="tabDaschboard">Dashboard</a></li>
        <li><a href="#tabContainerMail" data-toggle="tab" id="tabMail">Mail</a></li>
        <li><a href="#tabContainerMenu" data-toggle="tab" id="tabMenu">Menu</a></li>
        <li><a href="#tabContainerProfile" data-toggle="tab" id="tabProfile">Profile</a></li>
        <li><a href="#tabContainerAccount" data-toggle="tab" id="tabAccount">Account</a></li>
    </ul>

    <g:javascript>
        window.foodible.ContentLoader.registerContent('tabMail', "${g.createLink([controller: 'user', action: 'ajaxProfile'])}", 'tabContainerMail', ['tabMail']);
        window.foodible.ContentLoader.registerContent('tabMenu', 'TODO', 'tabContainerMail', ['tabMail']);
        window.foodible.ContentLoader.registerContent('tabProfile', "${g.createLink([controller: 'user', action: 'ajaxProfile'])}", 'tabContainerProfile', ['tabProfile']);
        window.foodible.ContentLoader.registerContent('tabAccount', "${g.createLink([controller: 'account', action: 'ajaxIndex'])}", 'tabContainerAccount', ['tabAccount']);
    </g:javascript>

    <div class="tab-content">
        <div class="tab-pane active" id="tabContainerDashBoard">
            <p>TODO load Dashboard</p>
        </div>

        <div class="tab-pane" id="tabContainerMail"></div>
        <div class="tab-pane" id="tabContainerMenu"></div>
        <div class="tab-pane" id="tabContainerProfile"></div>
        <div class="tab-pane" id="tabContainerAccount"></div>
    </div>
</div>

</body>
</html>