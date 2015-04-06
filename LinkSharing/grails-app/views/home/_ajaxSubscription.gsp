<div class="media">
    <div class="media-left">
        <g:link controller="user" action="showPublicProfile" params="[user: topic?.createdBy?.id]">
            <img width="70px" height="70px"
                 src="${createLink(controller: "user", action: 'showImage', params: [path: topic.createdBy.photoPath])}"/>
        </g:link>
    </div>

    <div class="media-body">
        <h4 class="media-heading"></h4>
        <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': topic?.id])}">${topic?.name}</a>

        <h5 class="des-head">@${topic?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topic?.subscriptions?.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${topic?.resources?.size()}</h5>

        <div id="tren-${topic.id}">
            <ls:isSubscribed sub1="${topic}"/>
        </div>
    </div>
</div>

