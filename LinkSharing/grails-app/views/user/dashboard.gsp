<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 26/2/15
  Time: 6:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="masterPage2">
    <title>Dashboard</title>

    %{--<asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:javascript src="bootstrap.min.js"/>

    <script type="text/javascript" src="jquery.min.js"></script>--}%

</head>

<body>
<script>
    alert("User ${session['username']} has successfully logged in")
</script>

<div class="row">
    <div class="col-md-4">
    <g:render template="/templates/userInformation"/>

    <g:render template="/templates/subscription"/>

    <g:render template="/templates/trendingtopics"/>
    <g:render template="/user/sendinvitation"/>
    <!-- col md 4 --></div>

    <div class="col-md-8">

        <g:render template="/templates/inbox"/>

    </div><!--col 8-->
</div><!--row-->

</body>
</html>