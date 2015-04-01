<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Linksharing"/></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:stylesheet src="span.css"/>
    <asset:stylesheet src="jquery.raty.css"/>
    <asset:javascript src="jquery-2.1.3.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.raty.js"/>
    <asset:javascript src="linkSharingAjax.js"/>

    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link class="navbar-brand" controller="home" action="index" style="color:#0000ff">Link Sharing</g:link>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <g:form controller="home" class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control" placeholder="Search"/>
                    <g:submitButton name="search" value="Search"/>
                    <a href="#link" data-toggle="modal" title="Share Link" style="text-decoration: none"><span
                            class="glyphicon-comment" style="font-size: 40px "/></a>
                    <a href="#document" data-toggle="modal" title="Share Document" style="text-decoration: none"><span
                            class="glyphicon-apple" style="font-size: 40px "/></a>

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
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<g:layoutBody/>
</body>
</html>