<g:set var="lastElement" value="${items.size() - 1}" />
[
<g:each in="${items}" status="status" var="item">
    {text :'${enumMessage(enum: item)}', value : '${item}', selected:false}
    <g:if test="${status < lastElement}">,</g:if>
</g:each>
]