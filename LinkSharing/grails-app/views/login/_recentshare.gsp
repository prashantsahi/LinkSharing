<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Recent Shares
            <span style="float:right " class="panel-title"><g:link class="noUnderline" controller="login"
                                                                   action="showAllResources">View ALL</g:link></span>
        </h3>
    </div>


    <div class="panel-body">
        <g:each in="${resources}" var="resource">
            <div class="media">
                <div class="media-left">
                    <g:link class="noUnderline" controller="user" action="showPublicProfile" params="[user: resource?.createdBy?.id]">
                        <img width="60px" height="60px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
                    </g:link>
                </div>

                <div class="media-body media-marg">
                    <h4 class="media-heading">${resource?.createdBy?.username}
                        <a class="noUnderline" href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic.id])}"
                           style="float: right;">${resource?.topic?.name}</a></h4>

                    <p>${resource?.description}</p>
                    <h4 class="media-heading">
                        <g:render template="/templates/logos"/>
                        <a class="noUnderline" href="${createLink(controller: 'home', action: 'posts',params: [resource:resource?.id])}"
                           style="float: right;">View post</a>
                    </h4>

                    <p>${resource?.dateCreated}</p>
                </div>
            </div>
        </g:each>

    </div>
</div>