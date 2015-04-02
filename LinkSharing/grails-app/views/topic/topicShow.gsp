<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">
    <title>topicShow</title>
</head>

<body>

<g:render template="/templates/sharelink" model='[subscribedTopics: subscribedTopics]'/>
<g:render template="/templates/sharedocument" model='[subscribedTopics: subscribedTopics]'/>

<div class="row">
    <div class="col-md-1"></div>

    <div class="col-md-4">
        <g:render template="/topic/topic" model="[topic: topic]"/>

%{--        <div class="renderSubscribedDiv">
            <g:render template="/home/ajaxSubscription" model="[topic: topic]"/>
            <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
        </div>--}%

        <g:render template="/topic/users" model="[topic: topic]"/>
        <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
    </div>

    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Posts :"${topic.name}" <input type="text" placeholder="search"
                                                                       style="float:right;">
                </h3>
            </div>
            <g:render template="/topic/posts" model="[resources: topic.resources]"/>
        </div>
    </div>

    <div class="col-md-1"></div>

</div>

</body>
</html>



