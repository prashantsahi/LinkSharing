<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="commonLayout">

    <title>All Subscriptions</title>
</head>

<body>
<g:render template="/templates/shareDocument" model='[subscribeTopics: subscribedTopics]'/>
<g:render template="/templates/shareLink" model='[subscribeTopics: subscribedTopics]'/>

<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-5">
            <div id="one" class="panel panel-primary">
                <div class="panel-heading">
                    <g:if test="${topicFlag}">
                        <h3 class="panel-title" style="text-align: center">Topic</h3>
                    </g:if>
                    <g:else>
                        <h3 class="panel-title" style="text-align: center">All Subscriptions</h3>
                    </g:else>
                </div>

                <div>
                    <g:render template="/home/viewAllSubscriptions"
                              model="[subscriptions: subscribedTopics, subscriptionCount: subscriptionCount/*, max: max, offset: offset*/]"/>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Posts :%{--"${topic.name}"--}%
                    <g:textField name="search" placeholder="search" style="color: black;float:right;"
                                 class="postsResources"
                                 data-ajax-url="${createLink(controller: "search", action: "searchPost")}"/></h3>
                </div>

                <div id="resources">

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>