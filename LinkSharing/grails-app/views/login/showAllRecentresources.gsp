<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="homeLayout">
    <title>
        ALL Recent Resources
    </title>
</head>

<body>
<div class="row">
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">ALL recent resources
                </h3>
            </div>

            <div id="allRecentShares">
                <g:render template="allRecentResources" model="[resources: res, resCount: resCount]"/>
            </div>
        </div>
    </div>

    <div class="col-md-4">
    </div>
</div>

</body>
</html>
