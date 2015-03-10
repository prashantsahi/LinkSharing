<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 25/2/15
  Time: 5:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="master">
    <title>Page2</title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:stylesheet src="span.css"/>
    <asset:javascript src="bootstrap.min.js"/>

</head>

<body>
<g:if test="${flash.message}">
    ${flash.message}
    </g:if>
<div class="row">
    <div class="col-md-8">
    <g:if test="${session['username'] != null }">
        <g:render template="/templates/recentshare" model="[resources: res]"/>
        <g:render template="/templates/topposts" model="[ratings: rating]"/>
    </g:if>
    </div>

    <div class="col-md-4">
        <g:render template="/templates/login"/>
        <g:render template="/templates/register"/>

    </div>
</div>

</body>
</html>