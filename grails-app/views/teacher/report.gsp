<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Report</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico"/>
    <asset:stylesheet src="stylesheet.css"/>
</head>

<body>

<div>
    <g:each var="question" in="${questionList}">

        <h1>${question.text}</h1>
        <g:each var="answer" in="${question.answers}">
            <p>
                ${answer.text}
            </p>
        </g:each>
    </g:each>
</div>

</body>
</html>
