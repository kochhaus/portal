<%@ page contentType="text/javascript;charset=UTF-8" %>
<g:set var="citiesLastElement" value="${cities.size() - 1}" />
<g:set var="serviceTypesLastElement" value="${cities.size() - 1}" />
var G = G || {};
G.MainPage = {
    cities:[
        <g:each in="${cities}" status="status" var="item">
            {text :"${item.name}", value : ${item.id}, selected:false}
            <g:if test="${status < citiesLastElement}">,</g:if>
        </g:each>
    ],
    serviceTypes:[
        <g:each in="${serviceTypes}" status="status" var="item">
            {text :'${enumMessage(enum: item)}', value : '${item}', selected:false}
            <g:if test="${status < serviceTypesLastElement}">,</g:if>
        </g:each>
    ]
}