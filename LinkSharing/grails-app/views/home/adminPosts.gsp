<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="dashboardLayout">
</head>

<body>
<g:render template="/user/createtopic"/>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/user/sendinvitation" model='[subscribeTopics: "${subscribedTopics}"]'/>

<div class="row">
    <div class="col-md-1">
    </div>

    <div class="col-md-5">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center">All Subscriptions</h3>
            </div>
            <g:each in="${resources}" var="resource">
                <g:render template="/templates/resourceRatingPosts" model="[resource: resource.resource,average:resource.avgRating]"/>
            </g:each>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <g:render template="/home/trendingtopics" model="[trendingTopics: trending]"/>

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>