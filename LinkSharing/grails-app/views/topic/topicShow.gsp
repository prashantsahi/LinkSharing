
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="masterPage3">
    <asset:javascript src="linkSharingAjax.js"/>
    <title>::topicShow::</title>
</head>

<body>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-4">
        <g:render template="/topic/topic" model="[topic: topics]"/>
        <g:render template="/topic/users" model="[topic: topics]"/>
    </div>
    %{--<div class="col-md-1"></div>--}%

    <div class="col-md-6">
        <g:render template="/topic/posts" model="[topic: topics]"/>
    </div>
    <div class="col-md-1"></div>

</div>

</body>
</html>



