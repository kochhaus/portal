<div id="profile-main-menu">
    <g:if test="${user}">
        Hello ${user.firstname}
    </g:if>
    <ul>
        <li><a href="#">News stream</a></li>
        <li><a href="#">Inbox bookings</a></li>
        <li><g:link action="profileSettings">Profile settings</g:link></li>
        <li><a href="#">Menu creation</a></li>
        <li><a href="#">Account setting</a></li>
    </ul>
    <div class="clearfix"></div>
</div>