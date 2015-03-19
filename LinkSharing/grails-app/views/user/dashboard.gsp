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
</head>

<body>

<g:render template="/user/createtopic"/>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/user/sendinvitation" model='[subscribeTopics: "${subscribedTopics}"]'/>
<div class="row">
    <div class="col-md-4">
        <g:render template="/templates/userInformation"/>
        <g:render template="/home/subscription" model="[subscript: subscriptions]"/>
        <g:render template="/templates/trendingtopics" model="[trend: trending]"/>
    </div>

    <div class="col-md-8">
        <ls:inbox resource="${res}"/>
    </div><!--col 8-->
</div><!--row-->
</body>
</html>