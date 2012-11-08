<g:set var="lastElement" value="${items.size() - 1}" />
[
<g:each in="${items}" status="status" var="item">
    {text :"${item.value} &euro;", value : ${item.id}, selected:false}
    <g:if test="${status < lastElement}">,</g:if>
</g:each>
]