<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Linksharing"/></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="jquery.validate.js"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link class="navbar-brand" controller="home" action="index" style="color:#0000ff">Link Sharing</g:link>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <g:form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control" placeholder="Search"/>
                    <g:submitButton name="search" value="Search"/>
                </div>
            </g:form>
        </div>
    </div>
</nav>
<g:layoutBody/>
</body>
</html>