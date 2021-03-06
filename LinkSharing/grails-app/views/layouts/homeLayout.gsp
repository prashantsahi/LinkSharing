<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head >
    <title ><g:layoutTitle default="Linksharing"/></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <asset:stylesheet src="span.css"/>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.validate.js"/>
    <asset:javascript src="register.js"/>
    <asset:javascript src="linkSharingAjax.js"/>
    <g:layoutHead/>
</head>

<body >
<nav  class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link class="noUnderline navbar-brand" controller="home" action="index"
                    style="color:#0000ff">Link Sharing</g:link>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <g:form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control globalSearch" placeholder="Search"
                                 data-ajax-url="${createLink(controller: "search", action: "globalSearch")}"/>
                </div>
            </g:form>
        </div>
    </div>
</nav>
<g:if test="${flash.message}">
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">×</button>
        ${flash.message}
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">×</button>
        ${flash.error}
    </div>
</g:if>
<g:layoutBody/>
</body>
</html>