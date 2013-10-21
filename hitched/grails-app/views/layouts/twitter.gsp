<!DOCTYPE html>
<html lang="en">
<head>
    <title><g:layoutTitle/></title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<g:resource dir="css" file="styles.css"/>" rel="stylesheet"/>
    <!-- Bootstrap -->
    <link href="<g:resource dir="css/bootstrap" file="bootstrap.min.css"/>" rel="stylesheet" media="screen">
    <r:layoutResources/>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <ul class="nav navbar-nav">
            <li ><a href="/">Home</a></li>
            <li><a href="price.html">Price</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>
<g:layoutBody/>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<g:resource dir="js/jquery" file="jquery.min.js"/>"></script>
<script src="<g:resource dir="js/bootstrap" file="bootstrap.min.js"/>"></script>
<r:layoutResources/>
</body>
</html>