<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 3/3/15
  Time: 10:46 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="masterPage3">
    <title>::topicShow::</title>
</head>

<body>

<div class="row">
    <div class="col-md-5">
        <g:render template="/templates/topic" model="[top: topics]"/>
        <g:render template="/templates/users" model="[top: topics]"/>

    </div>

    <div class="col-md-7">
        <g:render template="/user/inbox" model="[top: topics]"/>
    </div>
</div>

</body>
</html>