<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">

    <title>All Trending</title>
</head>

<body>
<g:render template="/templates/sharelink" model='[subscribedTopics: subscribedTopics]'/>
<g:render template="/templates/sharedocument" model='[subscribedTopics: subscribedTopics]'/>
<div class="row">
    <div class="col-md-2"></div>

    <div class="col-md-5">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center">All Trending</h3>
            </div>

            <div class="panel-body" id="viewAllTrending">
                <g:each in="${trend}" var="topic">
                    <g:render template="ajaxSubscription" model="[topic: topic]"/>
                    <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
                </g:each>
            </div>
        </div>

    </div>
</div>
</body>
</html>

