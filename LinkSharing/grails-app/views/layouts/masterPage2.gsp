<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 2/3/15
  Time: 7:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Linksharing"/></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <g:link class="navbar-brand" controller="home" action="index" style="color:#0000ff">Link Sharing</g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <g:form controller="home" class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <g:textField name="search" class="form-control" placeholder="Search"/>
                    <g:submitButton name="search" value="Search"/>

                    <a href="#createTopic" data-toggle="modal" title="Create topic" style="text-decoration: none"><span
                            class="glyphicon-user" style="font-size: 40px "/></a>
                    <a href="#sendInvitation" data-toggle="modal" title="Send invitation"
                       style="text-decoration: none"><span class="glyphicon-envelope" style="font-size: 40px"/>
                    </a>&nbsp;&nbsp;
                    <a href="#link" data-toggle="modal" title="Share Link" style="text-decoration: none"><span
                            class="glyphicon-comment" style="font-size: 40px "/></a>
                    <a href="#document" data-toggle="modal" title="Share Document" style="text-decoration: none"><span
                            class="glyphicon-apple" style="font-size: 40px "/></a>
                    <a href="#" data-toggle="modal" title="${user.username}" style="text-decoration: none">
                        <img width="35px" height="35px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                    </a>

                    %{--<div class="dropdown">--}%
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-expanded="true">
                        <span>${session['username']}</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><g:link role="menuitem" tabindex="-1">Profile</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1">Users</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1">Topic</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1">Post</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="home"
                                                        action="logout">Logout</g:link></li>
                    </ul>
                    %{--</div>--}%

                </div>
            </g:form>

            <g:render template="/user/createtopic"/>
            <g:render template="/templates/sharelink"/>
            <g:render template="/templates/sharedocument"/>
        %{--<g:render template="/templates/trendingtopics"/>--}%
            <g:render template="/user/sendinvitation"/>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<g:layoutBody/>
</body>
</html>