<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Top Stories
            <span style="float:right " class="panel-title"><g:link controller="login" action="showAllPosts">View ALL</g:link></span>
        </h3>
    </div>

    <div class="panel-body">
        <g:each in="${ratings}" var="rating">
            <div class="media">
                <div class="media-left">
                    <g:link controller="user" action="showProfile">
                        <img width="60px" height="60px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: rating?.user?.photoPath])}"/>
                    </g:link>
                </div>

                <div class="media-body media-marg">
                    <h4><a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': rating?.resource?.topic?.name])}"
                           style="float: right;">${rating?.resource?.topic?.name}</a></h4>

                    <p>Resource Name : ${rating?.resource?.title}</p>

                    <h4 class="media-heading"><g:render template="/templates/logos"/><a
                            href="${createLink(controller: 'demo', action: 'posts')}"
                            style="float: right;">View post</a></h4>

                </div>
            </div>
        </g:each>
    </div>

</div>