<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="commonLayout">
</head>

<body>
<g:render template="/templates/shareLink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/shareDocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-5">
            <div class="panel panel-primary">
                <g:render template="/templates/resourceRatingPosts" model="[resource: resource, average: average]"/>
            </div>
        </div>

        <div class="col-md-1">
        </div>

        <div class="col-md-5">
            <g:render template="/home/trendingTopics" model="[trendingTopics: trending]"/>
        </div>

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>