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

            <div id="viewAll">
                <g:render template="/home/viewAllSubscriptions"
                          model="[[subscriptions: subscriptions, subscriptionCount: subscriptionCount, max: max, offset: offset]]"/>
                %{--<div class="panel-body">
                    <g:each in="${subscriptions}" var="subst">
                        <ls:isSubscribed sub1="${subst}"/>
                    </g:each>
                    <util:remotePaginate controller="subscription" action="viewAllSubscriptions"
                                         total="${subscriptionCount}"
                                         update="viewAll" max="${max}" offset="${offset}"
                                         pageSizes="[5, 10, 20, 50, 100]"/>
                </div>--}%
            </div>
        </div>
    </div>
</div>
</body>
</html>