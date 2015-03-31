
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">
    %{--<asset:javascript src="linkSharingAjax.js"/>--}%
    <title>::topicShow::</title>
</head>

<body>

<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-4">
        <g:render template="/topic/topic" model="[topic: topics]"/>
        <g:render template="/topic/users" model="[topic: topics]"/>
    </div>
    %{--<div class="col-md-1"></div>--}%

    <div class="col-md-6">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Inbox :"${topics.name}" <input type="text" placeholder="search" style="float:right;">
            </h3>
        </div>
        <g:render template="/topic/posts" model="[resources: topics.resources]"/>
    </div>
    </div>
    <div class="col-md-1"></div>

</div>

</body>
</html>



