<div class="panel-body">
    <g:each in="${ratings}" var="rating">
        <div class="media">
            <div class="media-left">
                <g:link class="noUnderline" controller="user" action="showPublicProfile" params="[user:rating?.user?.id]" >
                    <img width="60px" height="60px  "
                         src="${createLink(controller: "user", action: 'showImage', params: [path: rating?.user?.photoPath])}"/>
                </g:link>
            </div>

            <div class="media-body media-marg">
                <h4><a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': rating?.resource?.topic?.id])}"
                       style="float: right;">${rating?.resource?.topic?.name}</a></h4>

                <p>Resource Name : ${rating?.resource?.title}</p>

                <h4 class="media-heading"><g:render template="/templates/logos"/>
                    <a href="${createLink(controller: 'home', action: 'posts',params: ['resource':rating?.resource?.id ])}"
                       style="float: right;">View post</a></h4>

            </div>
        </div>
    </g:each>
    <util:remotePaginate controller="login" action="topPosts" total="${rateCount}"
                         update="allTopPosts" pageSizes="[5, 10, 20, 50, 100]"/>
</div>
