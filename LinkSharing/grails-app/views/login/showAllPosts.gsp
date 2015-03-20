<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="homeLayout">
    <title>
        ALL Top Posts
    </title>
</head>

<body>
<div class="row">
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">ALL Top Posts
                </h3>
            </div>

            <div id="allTopPosts">
                <g:render template="allTopPosts" model="[ratings: rating, rateCount: rateCount]"/>
            </div>
        </div>
    </div>

    <div class="col-md-4">
    </div>
</div>

</body>
</html>
