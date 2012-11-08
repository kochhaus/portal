<%@ page contentType="text/javascript;charset=UTF-8" %>

var G = G || {};
G.MainPage = {
    cities: <g:render template="elements/cities" model="[items:cities]" />,
    serviceTypes: <g:render template="elements/serviceTypes" model="[items:serviceTypes]" />
}