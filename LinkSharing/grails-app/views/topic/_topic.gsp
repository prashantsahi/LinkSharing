<%@ page import="bootcamp.Visibility" %>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Topic:"${topic.name}"</h3>
    </div>

    <div class="panel-body">
        %{--<div class="media">
            <div class="media-left">
                <g:link controller="user" action="showPublicProfile" params="[user: topic?.createdBy?.id]">
                    <img width="60px" height="60px"
                         src="${createLink(controller: "user", action: 'showImage', params: [path: topic.createdBy.photoPath])}"/>
                </g:link>
            </div>

            <div class="media-body">
                <h5 class="media-heading"><a href="#">${topic.name}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <g:if test="${topic.visibility = bootcamp.Visibility.Private}">Private</g:if>
                </h5>
                <h5 class="des-head">@ ${topic.createdBy.firstName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                <g:link>Subscribe</g:link>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${topic.subscriptions.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;${topic.resources.size()}

                <br><br>

                <g:select name="seriousness-${topic.id}" from="${bootcamp.Seriousness.values()}"
                          onchange="seriousNess('${createLink(controller: 'subscription', action: 'changeSeriousness', params: [subscribedTopic: topic.id])}',${topic.id})"/>


                <a href="#topicInvite-${topic.id}" id="topic-${topic?.id}" data-toggle="modal" title="Send invitation" class="btn btn-default" aria-label="Left Align"
                   style="text-decoration: none"><span class="glyphicon-envelope" style="font-size: 40px"/>
                </a>


            </div>

        </div>--}%
        <div class="renderSubscribedDiv">
            <g:render template="/home/ajaxSubscription" model="[topic: topic]"/>
            <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
        </div>

    </div>

</div>
