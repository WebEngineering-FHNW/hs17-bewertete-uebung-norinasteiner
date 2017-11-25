<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div>
    <g:each var = "question" in="${questionList}">

        <h1>${question.text}</h1>
        <g:each var = "answer" in="${question.answers}">
            <p>
                ${answer.text}
            </p>
        </g:each>
    </g:each>
</div>


</body>
</html>
