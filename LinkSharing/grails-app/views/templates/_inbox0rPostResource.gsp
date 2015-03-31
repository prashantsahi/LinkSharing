<div class="media">
    <div class="media-left">
        <g:link controller="user" action="showPublicProfile" params="[user: resource?.createdBy?.id]">
            <img width="60px" height="60px"
                 src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
        </g:link>
    </div>
    <div class="media-body">
        ${resource?.createdBy?.firstName} &nbsp;${resource?.createdBy?.lastName}&nbsp;&nbsp;&nbsp;&nbsp; @${resource?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br><br>

        <p>${resource?.description}</p>

        <g:render template="/templates/logos"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <ls:checkRes resource="${resource}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        %{--<g:link>MarkAsRead</g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--}%
        <ls:checkReading resource="${resource}" ajaxClass="${ajaxClass}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <g:link controller="home" action="posts" params="[resource: resource?.id]">View Post</g:link>
        <br>
        <br>
    </div> <!--media body-->

</div><!--media-->