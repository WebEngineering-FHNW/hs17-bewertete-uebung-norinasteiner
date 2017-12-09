<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Show Answer</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico"/>
    <asset:stylesheet src="stylesheet.css"/>
    <g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}"/>
</head>

<body>
<a href="#show-answer" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" controller="teacher" action="index"><g:message code="default.list.label"
                                                                                args="['Question']"/></g:link></li>
    </ul>
</div>

<div id="show-answer" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:display bean="answer"/>

</div>
</body>
</html>
