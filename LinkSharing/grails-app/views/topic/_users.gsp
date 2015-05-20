<div id="one" class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Users: "${topic.name}"</h3>
    </div>

    <div class="panel-body">
        <g:each in="${topic.subscriptions.user}" var="subscribers">
            <div class="media">
                <div class="media-left">
                    <g:link class="noUnderline" controller="user" action="showPublicProfile" params="[user:subscribers?.id]" >
                        <img width="80px" height="80px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: subscribers.photoPath])}"/>
                    </g:link>
                </div>

                <div class="media-body">
                    <h4 class="media-heading"></h4>

                    ${subscribers.username}
                    <h5 class="des-head">@${subscribers.firstName}<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Topics
                    </h5>
                    <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subscribers.subscriptions.size()} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subscribers.topics.size()}</h5>

                    <br>

                </div>

            </div>
        </g:each>
    </div>
</div>
