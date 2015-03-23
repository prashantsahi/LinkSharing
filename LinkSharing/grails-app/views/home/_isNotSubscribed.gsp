<g:each in="${sub}" var="subs">
    <div class="media">
        <div class="media-left">
            <g:link controller="user" action="showPublicProfile" params="[user: subs?.createdBy?.id]">
                <img width="70px" height="70px"
                     src="${createLink(controller: "user", action: 'showImage', params: [path: subs.createdBy.photoPath])}"/>
            </g:link>
        </div>

        <div class="media-body">
            <h4 class="media-heading"></h4>
            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': subs?.name])}">${subs?.name}</a>
        </a>

            <h5 class="des-head">@${subs?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
            <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subs?.subscriptions?.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${subs?.resources?.size()}</h5>

            %{--<g:link controller="subscription" action="subscribed" params="[topic:subs.name]">Subscribe</g:link>--}%
            <a href="#"
               data-ajax-url="${createLink(controller: "subscription", action: "subscribed"/*, params:[topic:subs.name]*/)}"
               data-topic="${subs.name}" class="subscribeTopic" >Subscribe</a>
        </div>
    </div>
</g:each>