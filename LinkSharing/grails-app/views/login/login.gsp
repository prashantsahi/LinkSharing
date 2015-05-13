<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta  name="layout" content="homeLayout">
    <title>Login Page</title>

</head>

<body>
<div  class="globalSearchDiv">

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-5">

            <div id="recentshares">
                <ls:recentShare resources="${res}" resCnt="${resCount}"/>
            </div>

            <ls:top rate="${rating}"/>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <g:render template="/login/login"/>
            <g:render template="/login/register"/>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>>
</body>
</html>