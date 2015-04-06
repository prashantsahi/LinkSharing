<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="dashboardLayout">
    <title>Dashboard</title>
</head>

<body>
<g:render template="/user/createTopic"/>
<g:render template="/user/sendInvitation" model='[subscribeTopics: subscribedTopics]'/>
<g:render template="/templates/shareLink" model='[subscribedTopics: subscribedTopics]'/>
<g:render template="/templates/shareDocument" model='[subscribedTopics: subscribedTopics]'/>
<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-5">
            <g:render template="/templates/userInformation"/>
            <g:render template="/home/subscription" model="[subscript: subscriptions]"/>
            <g:render template="/home/trendingTopics" model="[trendingTopics: trending]"/>
        </div>

        <div class="col-md-1"></div>

        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Inbox
                    <g:textField name="search" class="inbox" placeholder="search" style="float:right;color: #080808"
                                 data-ajax-url="${createLink(controller: "search", action: "searchInbox")}"/>
                    </h3>
                </div>
                <ls:inbox resource="${res}"/>
            </div>
        </div><!--col 8-->
    </div>
</div><!--row-->
</body>
</html>