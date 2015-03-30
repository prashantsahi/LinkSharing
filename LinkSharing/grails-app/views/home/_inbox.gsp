<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Inbox  <input type="text" placeholder="search" style="float:right;"></h3>
    </div>
    <div class="panel-body">

        <g:each in="${resources}" var="resource">

            <div class="unreadResourceHide-${resource?.id}">

                <div class="media">
                    <div class="media-left">
                        <g:link controller="user" action="showPublicProfile" params="[user: resource?.createdBy?.id]">
                            <img width="60px" height="60px"
                                 src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
                        </g:link>
                    </div>

                    <div class="media-body">
                        ${resource?.createdBy?.firstName} &nbsp;${resource?.createdBy?.lastName}&nbsp;&nbsp;&nbsp;&nbsp; @${resource?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic?.name])}">${resource?.topic?.name}</a>
                        <br><br>

                        <p>${resource?.description}</p>

                        <g:render template="/templates/logos"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <ls:checkRes resource="${resource}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        %{--<g:link>  MarkAsRead  </g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--}%
                        <ls:checkReading resource="${resource}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <g:link controller="home" action="posts"
                                params="[resource: resource?.id]">View Post</g:link>
                        <br>
                        <br>
                    </div> <!--media body-->

                </div><!--media-->

            </div>
        </g:each>
    </div> <!--panel body-->
</div>