<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Linksharing"/></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    %{--<asset:stylesheet src="bootstrap.min.css"/>--}%
    %{--<asset:stylesheet src="bootstrap-theme.min.css"/>--}%
    <asset:stylesheet src="span.css"/>
    <asset:stylesheet src="jquery.raty.css"/>
    <asset:stylesheet src="span.css"/>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.validate.js"/>
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
                    <g:textField name="search" class="form-control globalSearch" placeholder="Search"
                                 data-ajax-url="${createLink(controller: "search", action: "globalSearch")}"/>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a style="text-decoration: none" href="#createTopic" data-toggle="modal" title="Create topic" style="text-decoration: none"><span
                            class="glyphicon glyphicon-comment" style="font-size: 20px "/></a>&nbsp;&nbsp;&nbsp;&nbsp;

                    <a href="#sendInvitation" data-toggle="modal" title="Send invitation"
                       style="text-decoration: none"><span class="glyphicon glyphicon-envelope" style="font-size: 20px"/>
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#link" data-toggle="modal" title="Share Link" style="text-decoration: none"><span
                            class="glyphicon glyphicon-tags" style="font-size: 20px "/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#document" data-toggle="modal" title="Share Document" style="text-decoration: none"><span
                            class="glyphicon glyphicon-paperclip" style="font-size: 20px "/></a>&nbsp;
                    %{--<a href="#" data-toggle="modal" title="${user.username}" style="text-decoration: none">--}%
                    <img width="35px" height="35px title="${user.username}""
                src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                %{--</a>--}%
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-expanded="true">
                        <span>${session['username']}</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="user"
                                                        action="editProfile">Profile</g:link></li>
                        <g:if test="${user.admin}">
                            <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="user"
                                                            action="userTable">Users</g:link></li>
                            <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="subscription"
                                                            action="viewAllSubscriptions">Topic</g:link></li>
                            <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="home"
                                                            action="adminPosts">Post</g:link></li>
                        </g:if>

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