<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="commonLayout">
</head>

<body>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>

<div class="row">
    %{--<div class="col-md-1">--}%
    </div>

    <div class="col-md-5">
        <div class="panel panel-primary">
            <g:render template="/templates/resourceRatingPosts" model="[resource: resource,average:average]"/>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <div class="col-md-5">
        <g:render template="/home/trendingtopics" model="[trendingTopics: trending]"/>

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>