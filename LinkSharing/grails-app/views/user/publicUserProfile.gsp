<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>PublicUserProfile</title>
    <meta name="layout" content="homeLayout"/>
</head>

<body>

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

                <g:each in="${userTopics}" var="topic">
                    <div class="renderSubscribedDiv">
                        <g:render template="/home/ajaxSubscription" model="[topic: topic]"/>
                        <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
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
            <g:render template="/topic/posts" model="[resources: publicResources]"/>
        </div> <!--panel body-->
    </div>

    <div class="col-md-1">
    </div>
</div>
</body>
</html>
