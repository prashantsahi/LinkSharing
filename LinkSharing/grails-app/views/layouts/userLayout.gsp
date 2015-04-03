<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Linksharing"/></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.validate.js"/>
    <asset:javascript src="register.js"/>
    <asset:javascript src="linkSharingAjax.js"/>
    <asset:stylesheet src="span.css"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link class="navbar-brand" controller="home" action="index"
                    style="color:#0000ff">Link Sharing</g:link>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <g:form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control globalSearch" placeholder="Search"
                                 data-ajax-url="${createLink(controller: "search", action: "globalSearch")}"/>


                    <g:if test="if(${user.username})">
                        <img width="35px" height="35px" title="${user.username}"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                    </g:if>
                    <g:else>
                        <asset:image src="apple-touch-icon-retina.png"/>
                    </g:else>

                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-expanded="true">
                        <span>${session['username']}</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="user"
                                                        action="editProfile">Profile</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="home"
                                                        action="logout">Logout</g:link></li>
                    </ul>
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