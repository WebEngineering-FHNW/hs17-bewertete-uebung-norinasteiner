<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main"/>
    <title>Question List</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico"/>
    <asset:stylesheet src="stylesheet.css"/>
    <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}"/>
</head>

<body>
<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" controller="question" action="create"><g:message code="default.new.label"
                                                                                    args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-question" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${questionList}" properties="['text', 'isTextQuestion']"/>

    <div class="pagination">
        <g:paginate total="${questionCount ?: 0}"/>
    </div>

    <p class="lnkButton">
        <a href="/teacher/report"><button>Generate report</button></a>
    </p>

</div>
</body>
</html>
