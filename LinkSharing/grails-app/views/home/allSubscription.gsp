<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">

    <title>All Subscriptions</title>
</head>

<body>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<div class="row">
    <div class="col-md-2"></div>

    <div class="col-md-5">
        <div id="one" class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center">All Subscriptions</h3>
            </div>

            <div>
                <g:render template="/home/viewAllSubscriptions"
                          model="[[subscriptions: subscriptions, subscriptionCount: subscriptionCount/*, max: max, offset: offset*/]]"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>