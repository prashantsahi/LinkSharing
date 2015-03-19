%{--
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Recent Shares
            <span style="float:right "><g:link >View ALL</g:link></span>
        </h3>
    </div>
--}%

<div class="panel-body">
    <g:each in="${resources}" var="resource">
        <div class="media">
            <div class="media-left">
                <g:link controller="user" action="showProfile">
                    <img width="60px" height="60px"
                         src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
                </g:link>
            </div>

            <div class="media-body media-marg">
                <h4 class="media-heading">${resource?.createdBy?.username}<a
                        href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic?.name])}"
                        style="float: right;">${resource?.topic?.name}</a></h4>

                <p>${resource?.description}</p>
                <h4 class="media-heading">
                    <g:render template="/templates/logos"/>
                    <a href="${createLink(controller: 'demo', action: 'posts')}"
                       style="float: right;">View post</a>
                </h4>

                <p>${resource?.dateCreated}</p>
            </div>
        </div>
    </g:each>

        <util:remotePaginate controller="login" action="recent" total="${resCount}"
                             update="allRecentShares" pageSizes="[5, 10, 20, 50, 100]"/>
</div>
%{--</div>--}%