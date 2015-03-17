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
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:javascript src="jquery-2.1.3.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
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
                    <a href="#" data-toggle="modal" title="User" style="text-decoration: none"><span
                            class="glyphicon-bishop" style="font-size: 40px "/></a>
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-expanded="true">
                        <span>${session['username']}</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="user"
                                                        action="showProfile">Profile</g:link></li>
                        <li role="presentation"><g:link role="menuitem" tabindex="-1" controller="home"
                                                        action="logout">Logout</g:link></li>
                    </ul>
                </div>
            </g:form>

            <g:render template="/templates/sharelink"/>
            <g:render template="/templates/sharedocument"/>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<g:layoutBody/>
</body>
</html>