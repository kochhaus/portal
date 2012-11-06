<%@ page contentType="text/javascript;charset=UTF-8" %>
<g:set var="lastElement" value="${values.size() - 1}" />
var G = G || {};
G.I18N = {
    <g:each in="${values}" status="status" var="message">
        '${message.key}':'${message.value}'<g:if test="${status < lastElement}">,</g:if>
    </g:each>
}