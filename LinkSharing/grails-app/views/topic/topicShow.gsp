<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">
    <title>topicShow</title>
</head>

<body>

<g:render template="/templates/shareLink" model='[subscribedTopics: subscribedTopics]'/>
<g:render template="/templates/shareDocument" model='[subscribedTopics: subscribedTopics]'/>

<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-4">
            <g:render template="/topic/topic" model="[topic: topic]"/>
            <g:render template="/topic/users" model="[topic: topic]"/>
            <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
        </div>

        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Posts :"${topic.name}"
                    <g:textField name="search" placeholder="search" style="color: black;float:right;"
                                 class="postsResources"
                                 data-ajax-url="${createLink(controller: "search", action: "searchPost")}"/>
                    </h3>
                </div>
                <g:render template="/topic/posts" model="[resources: topic.resources]"/>
            </div>
        </div>

        <div class="col-md-1"></div>

    </div>
</div>
</body>
</html>



