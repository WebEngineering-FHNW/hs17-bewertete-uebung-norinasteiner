<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico" />
    <asset:stylesheet src="stylesheet.css"/>
    <meta name="layout" content="main"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div id="show-question" class="content scaffold-show tsshow" role="main">
    <h1 class="header_question">Frage ${this.question.id}</h1>
    <p>${this.question.text}</p>
    <form action="/answer/save" method="post">
        <input type="hidden" name="question" value="${this.question.id}">
        <g:if test="${this.question.isTextQuestion}">
            <textarea name="text" rows="10" placeholder="Please fill in your answer" cols="30"></textarea>


            <input type="submit">
        </g:if>
        <g:else>
            <input type="submit" name="text" value="true">
            <input type="submit" name="text" value="false">

        </g:else>

    </form>
</div>
</body>
</html>
