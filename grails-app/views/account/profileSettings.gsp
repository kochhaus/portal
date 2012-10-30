<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="portal"/>
    <r:require modules="profileSettings"/>
</head>
<body>
    <div>
        <g:render template="mainMenu" />
        <div class="progress">
        </div>
        <div class="basic-data">
            <g:form>
                <fieldset>

                    <label for="name">choose a name</label>
                    <g:textField name="name" />
                    <br />
                    <label for="keywords">up tp 3 keywords describing you</label>
                    <g:textField name="keywords" />
                    <br />
                    <label for="maxPeople">max of people you want to cook for</label>
                    <g:select name="maxPeople" from="[]" />
                </fieldset>
                <br />
                <fieldset>
                    <label for="cities">choose up to 3 cities to cook</label>
                    <g:select name="cities" from="${cities}" optionKey="id" optionValue="name" multiple="multiple" />
                    <br />
                    <label for="rate">Your hourly rate</label>
                    <g:select name="rate" from="[]" />
                </fieldset>
            </g:form>
        </div>
    </div>
    <div class="type-of-kitchen">
        <label>Type of kitchen you can offer</label>
        <div>
            <label for="vegetarian">vegetarian</label><g:checkBox name="vegetarian" />
            <label for="vegetarian">asian</label><g:checkBox name="asianFood" />
        </div>
    </div>
</body>
</html>