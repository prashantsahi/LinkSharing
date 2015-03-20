<div class="panel panel-default">
    <div class="panel-body">

        <div class="media">
            <div class="media-left media-middle">
                <g:link controller="user" action="showProfile">
                    <img width="150px" height="150px"
                         src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                </g:link>
            </div>

            <div class="media-body">
                <h4 class="media-heading">${user.username}</h4>
                <h5 class="des-head">@${user.firstName}</h5>
                <br>
                <h5 class="des-head"><g:link
                        name="subscription">Subscriptions</g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <g:link
                        name="topics">Topics</g:link></h5>
                <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.subscriptions.size()}
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ${user.topics.size()}</h5>

            </div>
        </div>

    </div><!-- panel default -->
</div><!-- panel body -->