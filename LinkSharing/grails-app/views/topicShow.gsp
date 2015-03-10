<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 3/3/15
  Time: 10:46 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name ="layout" content ="masterPage3">
    <title>::topicShow::</title>

    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--}%
    %{--<link rel="stylesheet" href="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/css/application.css">--}%
    %{--<link rel="stylesheet" href="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/css/design.css">--}%
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">--}%

    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>--}%
    %{--<script  src="jquery.min.js"></script>--}%


</head>

<body>

<div class="row">
    <div class="col-md-5">
<g:render template="/templates/topic" model="[top:topics]"/>
<g:render template="/templates/users" model="[top:topics]"/>

    </div>

    <div class="col-md-7">
        <g:render template="/templates/inbox" model="[top:topics]"/>
    </div>
</div>

</body>
</html>