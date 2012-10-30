<%@ page contentType="text/javascript;charset=UTF-8" %>
var G = G || {};
G.I18N = {
    <g:each in="${values}" status="status" var="message">
        '${message.key}':'${message.value}',
    </g:each>
}