<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="master">
    <title>Login Page</title>
</head>

<body>

<div class="row">
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Recent Shares
                    <span style="float:right "><g:link controller="login" action="showAll">View ALL</g:link></span>
                </h3>
            </div>

            <div id="recentshares">
                <ls:recentShare resources="${res}" resCnt="${resCount}"/>
            </div>
            <ls:top rate="${rating}"/>
        </div>
    </div>
    <div class="col-md-4">
        <g:render template="/login/login"/>
        <g:render template="/login/register"/>
    </div>
</div>
</body>
</html>