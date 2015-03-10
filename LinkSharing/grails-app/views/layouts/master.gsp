
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title><g:layoutTitle default ="Linksharing"/> </title>
    <!-- Latest compiled and minified CSS -->
   <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:layoutHead/>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            %{--<a class="navbar-brand" href="#" style="color:#0000ff" >Link Sharing</a>--}%
            <g:link class="navbar-brand" controller="home" action="index" style="color:#0000ff" >Link Sharing</g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <g:form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control" placeholder="Search"/>
                    <g:submitButton name="search" value="Search" />
                </div>

            </g:form>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<g:layoutBody/>
</body>
</html>