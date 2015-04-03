<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="dashboardLayout">
</head>

<body>
<g:render template="/user/createTopic"/>
<g:render template="/templates/shareLink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/shareDocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/user/sendInvitation" model='[subscribeTopics: "${subscribedTopics}"]'/>

<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-5">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title" style="text-align: center">All Posts</h3>
                </div>
                <g:each in="${resources}" var="resource">
                    <g:render template="/templates/resourceRatingPosts"
                              model="[resource: resource.resource, average: resource.avgRating]"/>
                </g:each>
            </div>
        </div>

        <div class="col-md-1"></div>

        <div class="col-md-5">
            <g:render template="/home/trendingTopics" model="[trendingTopics: trending]"/>
        </div>
    </div>
</div>
</body>
</html>