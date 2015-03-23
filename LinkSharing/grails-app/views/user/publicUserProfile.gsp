<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>PublicUserProfile</title>
    <meta name="layout" content="homeLayout"/>
    %{--    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
        <asset:stylesheet src="styling.css"></asset:stylesheet>
        <asset:stylesheet src="bootstrap-theme.min.css"></asset:stylesheet>
        <asset:javascript src="bootstrap.min.js"></asset:javascript>
        <asset:javascript src="bs-glyphicons-data-generator.js"></asset:javascript>
        <asset:javascript src="dropdown.js"></asset:javascript>
        <asset:javascript src="jquery-2.1.3.min.js"></asset:javascript>
        <script type="text/javascript" src="jquery.min.js"></script>--}%
</head>

<body>
%{--<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Link Sharing</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
        </div>
    </div>
</nav>--}%

<div class="well well-lg panel">Public Profile</div>

<div class="row">
    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <img width="80px" height="80px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                    </div>

                    <div class="media-body">
                        <h4 class="media-heading">${user.firstName} ${user.lastName}</a></h4>
                        <br>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.subscriptions.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user?.resources?.size()}</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Topics<input type="text" placeholder="search" style="float:right;"></h3>
            </div>

            <div class="panel-body">
                <g:each in="${user.topics}" var="topic">
                    <div class="media">
                        <div class="media-left">
                            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': topic?.name])}">${topic?.name}</a>
                            %{--<a href="#">${topic.name}</a>--}%
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading"></h4>
                            <h5 class="des-head">@${user.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                            <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topic.subscriptions.size()} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topic.resources.size()}</h5>
                            <select align="right">
                                <option>Serious</option>
                                <option>Imp.</option>
                            </select>
                            <button type="button" class="btn btn-default" aria-label="Left Align">
                                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                            </button>
                        </div>
                    </div>
                </g:each>
            </div>
            <!--panel body-->
        </div>
    </div>

    <div class="col-md-1"></div>

    <div class="col-md-5">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Posts</h3>
            </div>

            <g:each in="${user.topics}" var="topics">
                <g:render template="/topic/posts" model="[topic: topics]"/>
            </g:each>

        </div> <!--panel body-->
    </div>

    <div class="col-md-1">
    </div>
</div>
</body>
</html>
