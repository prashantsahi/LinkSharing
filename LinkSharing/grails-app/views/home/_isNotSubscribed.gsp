<g:each in="${sub}" var="subs">
    <div class="media">
        <div class="media-left">
            <g:link controller="user" action="showProfile">
                <img width="70px" height="70px"
                     src="${createLink(controller: "user", action: 'showImage', params: [path: subs.createdBy.photoPath])}"/>
            </g:link>
        </div>

        <div class="media-body">
            <h4 class="media-heading"></h4>
            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': subs?.name])}">${subs?.name}</a>
        </a>

            <h5 class="des-head">@${subs.createdBy.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
            <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subs?.subscriptions?.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${subs?.resources?.size()}</h5>

            <g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
                      onchange="seriousNess('${createLink(controller: 'subscribe', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>


            <g:link class="btn btn-default" aria-label="Left Align" title='send invitation' controller="home"
                    action="">
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
            </g:link>
        </div>
    </div>
</g:each>