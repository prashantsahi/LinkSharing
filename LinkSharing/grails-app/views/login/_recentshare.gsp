<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Recent Shares</h3>
    </div>

    <div class="panel-body">
        <g:each in="${resources}" var="resource">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        %{--<img class="media-object" src="/User.png" alt="...">--}%
                        %{--<g:img uri="../../web-app/images/linksharing/user.jpg"/>--}%
                        %{--<asset:image src="linksharing/user.jpg" width="60px" height="60px"/>--}%
                        %{--${resource?.createdBy?.photoPath}--}%
                        <img width="60px" height="60px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
                        %{--<img src="${resource?.createdBy?.photoPath}" absolute="false" width="60px" height="60px" />--}%
                    </a>
                </div>

                <div class="media-body media-marg">
                    <h4 class="media-heading">${resource?.createdBy?.username}<a
                            href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic?.name])}"
                            style="float: right;">${resource?.topic?.name}</a></h4>

                    <p>${resource?.description}</p>
                    <h4 class="media-heading"><g:render template="/templates/logos"/><a
                            href="${createLink(controller: 'demo', action: 'posts')}"
                            style="float: right;">View post</a></h4>

                    <p>${resource?.dateCreated}</p>
                </div>
            </div>
        </g:each>

        %{--<g:paginate total="${resCount}" controller="login" action="index"/>--}%

        <util:remotePaginate controller="login" action="index" total="${resCount}"
                             update="#recentshares" pageSizes="[5,10, 20, 50,100]"/>
    </div>
</div>