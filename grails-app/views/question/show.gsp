<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Show question</title>
        <asset:stylesheet src="bootstrap.css"/>
        <asset:javascript src="bootstrap.js"/>
        <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico" />
        <asset:stylesheet src="stylesheet.css"/>
        <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
    </head>
    <body>
        <a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" controller="teacher" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-question" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="question" />
            <g:form resource="${this.question}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.question}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit"  value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
