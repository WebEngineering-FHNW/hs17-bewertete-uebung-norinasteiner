<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="utf-8">
    <title>Socrative-Light</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico"/>
    <asset:stylesheet src="stylesheet.css"/>
</head>

<body>
<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="socrative-light-logo.svg" class="ns_logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to Socrative-Light</h1>

        <p>
            Are you a student or a teachter?
        </p>

        <p>
            <a href="/teacher/index" class="btn btn-primary btn-lg tsButton" role="button">Teacher</a>
            <a href="/student/index" class="btn btn-primary btn-lg tsButton" role="button">Student</a>
        </p>
    </section>
</div>
</body>
</html>
