<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Inbox  <input type="text" placeholder="search" style="float:right;"></h3>
    </div>

    <div class="panel-body">

        <g:each in="${resources}" var="res">

            <div class="media">
                <div class="media-left">
                    <g:link controller="user" action="showProfile">
                        <img width="60px" height="60px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: res?.createdBy?.photoPath])}"/>
                    </g:link>
                </div>

                <div class="media-body">
                    ${res?.createdBy?.firstName} &nbsp;${res?.createdBy?.lastName}&nbsp;&nbsp;&nbsp;&nbsp; @${res?.createdBy.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': res?.topic?.name])}">${res?.topic?.name}</a>
                    <br><br>

                    <p>${res?.description}</p>

                    <g:render template="/templates/logos"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <g:link>Download</g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <g:link>Full Size</g:link> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <g:link>Mark As Read</g:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <g:link>View Post</g:link>
                    <br>
                    <br>
                </div> <!--media body-->

            </div><!--media-->
        </g:each>
    </div> <!--panel body-->
</div>