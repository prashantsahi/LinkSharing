<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 22/3/15
  Time: 12:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="homeLayout">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap-theme.min.css"/>
    <asset:stylesheet src="span.css"/>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="linkSharingAjax.js"/>

    <title>All Subscriptions</title>
</head>

<body>
<div class="row">
    <div class="col-md-2"></div>

    <div class="col-md-5">
        <div id="one" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center">All Subscriptions</h3>
            </div>

            <div id="viewAll">
                <g:render template="/home/viewAllSubscriptions" model="[[subscriptions: subscriptions, subscriptionCount: subscriptionCount, max: max, offset: offset]]"/>
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