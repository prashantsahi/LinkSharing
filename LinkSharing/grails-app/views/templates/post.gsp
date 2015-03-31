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
                            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic?.id])}"
                               style="float: right;">${resource?.topic?.name}</a>
                        </h4>

                        @${resource?.createdBy?.firstName}<span class="span-label"></span>
                        <span class="span-label" style="float: right ">${resource?.lastUpdated}</span>
                        <br>
                        <br>

                        <span style="float: right;">rating:<g:select name="score" from="[1, 2, 3, 4, 5]"/></span>
                        ${resource.resourceRatings.size()}

                    </div>
                </div>
                <br>
                <br>
                ${resource?.description}
                <br><br>

                <g:render template="/templates/logos"/>
                <div style="float: right">
                <a href="#">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">Delete </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <ls:checkRes resource="${resource}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <g:render template="/home/trendingtopics" model="[trendingTopics: trending]"/>

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>