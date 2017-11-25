<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div id="show-question" class="content scaffold-show" role="main">
    <h1>Frage ${this.question.id}</h1>
    <p>${this.question.text}</p>
    <form action="/answer/save" method="post">
        <textarea name="text" rows="10" placeholder="Bitte Antwort eingeben" cols="30"></textarea>

        <input type="hidden" name="question" value="${this.question.id}">

        <input type="submit">
    </form>
</div>
</body>
</html>
