<!DOCTYPE html>
<html>
    <head>
        <asset:stylesheet src="bootstrap.css"/>
        <asset:javascript src="bootstrap.js"/>
        <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico" />
        <asset:stylesheet src="stylesheet.css"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" controller="question" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-question" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${questionList}" properties="['text', 'isTextQuestion']" />

            <div class="pagination">
                <g:paginate total="${questionCount ?: 0}" />
            </div>
            <div class="lnkButton">
                <a href="/teacher/report" ><button>Generate report</button></a>

            </div>

        </div>
    </body>
</html>
