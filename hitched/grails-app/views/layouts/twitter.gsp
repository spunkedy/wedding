<!DOCTYPE html>
<html lang="en">
<head>
    <title><g:layoutTitle default="Shannon and Ed getting Hitched"/></title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<g:resource dir="css/bootstrap" file="bootstrap.min.css"/>" rel="stylesheet" media="screen">

    <link href="<g:resource dir="css" file="styles.css"/>" rel="stylesheet"/>
    <r:layoutResources/>
</head>
<body>
    <div id="wrap">
        <div id="main" class=" clear-top">
            <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
                <ul class="nav navbar-nav">
                    <li><a href="${createLink(uri: '/')}">Home</a></li>
                    <li><g:link controller="person" action="create">RSVP</g:link></li>
                    <li><g:link controller="main" action="registries">Registries</g:link></li>
                    <li><g:link controller="main" action="location">Location</g:link></li>
                    <sec:ifLoggedIn>
                        <li><g:link controller="person" action="index">People</g:link></li>
                    </sec:ifLoggedIn>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <sec:ifLoggedIn>
                        <li><g:link controller="logout" action="index">Log Off</g:link></li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li><g:link controller="login" action="auth">Log In</g:link></li>
                    </sec:ifNotLoggedIn>
                </ul>
            </nav>
            <g:layoutBody/>
        </div>
    </div>
    <footer class="footer"></footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<g:resource dir="js/jquery" file="jquery.min.js"/>"></script>
<script src="<g:resource dir="js/bootstrap" file="bootstrap.min.js"/>"></script>
<r:layoutResources/>
</body>
</html>