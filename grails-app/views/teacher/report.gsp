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

<div class="container">
    <h2>Report</h2>

    <p>You can see the actual Report from your Students</p>
    <table class="table tstable">
        <tr>
            <g:each var="i" in="${(0..questionList.size() - 1)}">
                <th>
                    ${questionList.get(i).text}
                </th>
            </g:each>
        </tr>

        <g:each var="i" in="${(0..questionList[0].answers.size() - 1)}">
            <tr>
                <g:each var="j" in="${(0..questionList.size() - 1)}">
                    <g:if test="${questionList[j].answers[i] != null}">
                        <td>
                            ${questionList[j].answers[i].text}
                        </td>
                    </g:if>
                </g:each>
            </tr>
        </g:each>
    </table>

</div>


%{--<div>
    <g:each var="question" in="${questionList}">
        <h1 class="report">${question.text}</h1>
        <g:each var="answer" in="${question.answers}">
            <p class="report">
                ${answer.text}
            </p>
        </g:each>
    </g:each>
</div>--}%



</body>
</html>
