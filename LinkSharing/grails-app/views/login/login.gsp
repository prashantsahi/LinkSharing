<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 25/2/15
  Time: 5:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="master">
    <title>Page2</title>
    %{--    <asset:javascript src="jquery-1.11.1.min.js"/>
        <asset:javascript src="jquery.validate.js"/>
        <asset:javascript src="register.js"/>--}%
    %{--    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/register.js"></script>--}%

</head>

<body>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>
<div class="row">
    <div class="col-md-8">
        %{--<g:if test="${session['username'] != null}">--}%
        <div id="recentshares">
            <ls:recentShare resources="${res}" resCnt="${resCount}"/>
            %{--<g:render template="/login/recentshare" model="[resources: res, resCount: resCount]"/>--}%
        </div>

        <ls:top rate="${rating}"/>
        %{--<g:render template="/login/topposts" model="[ratings: rating]"/>--}%

        %{--</g:if>--}%
    </div>

    <div class="col-md-4">
        <g:render template="/login/login"/>
        <g:render template="/login/register"/>

    </div>
</div>

</body>
</html>