<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Socrative-Light</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:link rel="icon" href="favicon-sogrative-light.ico" type="image/x-ico" />
    <asset:stylesheet src="stylesheet.css"/>

</head>
<body>

   %{-- <content tag="navbar-default">

    </content>
--}%
    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="socrative-light-logo.svg" class="ns_logo"/>
        </div>
    </div>


    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Socrative-Light</h1>


            <p>
                Sind Sie ein Schüler oder Lehrer?
            </p>
            <p>
            <a href="/teacher/index" class="btn btn-primary btn-lg tsButton" role="button">Lehrer</a>
            <a href="/student/index" class="btn btn-primary btn-lg tsButton" role="button">Schüler</a>
            </p>
            %{--<div id="controllers" role="navigation">

                <p> Localhost: ${ InetAddress.getLocalHost() }</p>
                <h2>Available Controllers:</h2>
                <ul>
                <!-- todo: uncomment link to booking controller search action -->
                <!--
                    <li class="controller">
                        <g:link controller="booking" action="search">Booking search page</g:link>
                    </li>
                  -->

                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>--}%
        </section>
    </div>

</body>
</html>

%{--<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="main"/>
    <title>Socrative</title>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:stylesheet src="stylesheet.css"/>
</head>

<body>
<div class="body">
    <div class="circle">
        <div id="containerIndex">
            <h1 id="indexTitle">Socrative Light</h1>
            <li>
                <asset:link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>

            </li>

                <div id="createTeacher" class="btn" type="button">
                    <a href="/teacher/index"><button>Lehrer</button></a>

                </div>

                <div id="createForStudent" class="btn" type="button">
                    <a href="/student/index"><button>Schüler</button></a>
                </div>

        </div>
    </div>
</div>
</body>
</html>--}%

