<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="commonLayout">
</head>

<body>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>

<div class="row">
    <div class="col-md-1">
    </div>

    <div class="col-md-5">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <g:link controller="user" action="showPublicProfile" params="[user: resource?.createdBy?.id]">
                            <img width="60px" height="60px"
                                 src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
                        </g:link>

                    </div>

                    <div class="media-body">
                        <h4 class="media-heading">${resource?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        %{--<a href="#">Grails</a>--}%
                            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic.name])}"
                               style="float: right;">${resource?.topic?.name}</a>
                        </h4>

                        @${resource?.createdBy?.firstName}<span class="span-label"></span>
                        <span class="span-label" style="float: right ">${resource?.lastUpdated}</span>
                        <br>
                        <br>

                        <span style="float: right;">rating:<g:select name="score" from="[1, 2, 3, 4, 5]"/></span>
                        ${resource.resourceratings.size()}

                    </div>
                </div>
                <br>
                <br>
                ${resource?.description}
                <br><br>

                <g:render template="/templates/logos"/>
                <div style="float: right">
                    <a href="#">Download</a>&nbsp;&nbsp;&nbsp;
                    <a href="#">View Full Size</a>&nbsp;&nbsp;&nbsp;
                    <a href="#">Mark As Read</a>&nbsp;&nbsp;&nbsp;
                    <a href="#">Edit</a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <g:render template="/home/trendingtopics" model="[trendingTopics: trending]"/>
        %{--        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Trending topics</h3>
                    </div>

                    <div class="panel-body">
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <asset:image class="media-object img-size" src="profile-icon.png"></asset:image>
                                </a>
                            </div>

                            <div class="media-body">
                                <h5 class="media-heading">Prashant Sahi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        href="#">Grails</a>&nbsp;&nbsp;&nbsp;&nbsp;(Private)</h5>
                                <h5 class="des-head">@Prashant&nbsp;&nbsp;&nbsp;&nbsp;   Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                                <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30</h5>

                            </div>

                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <asset:image class="media-object img-size" src="profile-icon.png"></asset:image>

                                </a>
                            </div>

                            <div class="media-body">
                                <h5>class="media-heading">Prashant Sahi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        href="#">Grails</a></h5>

                                <a href="#">Grails</a>
                                <h5 class="des-head">@uday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                                <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30</h5>



                                <select align="right">
                                    <option>Serious</option>
                                    <option>Imp.</option>
                                </select>

                                <select>
                                    <option>Private</option>
                                    <option>Edit</option>
                                    <option>Delete</option>
                                </select>


                                <button type="button" class="btn btn-default" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                </button>

                                <button type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                </button>

                            </div>
                        </div>

                    </div>
                </div>--}%

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>