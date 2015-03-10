<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Recent Shares</h3>
    </div>
    <div class="panel-body">
<g:each in="${res}" var="resources">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    %{--<img class="media-object" src="/User.png" alt="...">--}%
                    %{--<g:img uri="../../web-app/images/linksharing/user.jpg"/>--}%
                    <asset:image src="linksharing/user.jpg" width="60px" height="60px"/>
                </a>
            </div>
            <div class="media-body media-marg">
                <h4 class="media-heading">${resources?.createdBy}<a href="${createLink(controller: 'demo',action: 'topicShow', params: ['topic' :resources?.topic?.name])}" style="float: right;">${resources?.topic?.name}</a></h4>
                <p>${resources?.description}</p>
                <h4 class="media-heading"><g:render template="/templates/logos"/><a href="${createLink(controller: 'demo',action: 'posts')}" style="float: right;">View post</a></h4>

                %{--<p>${resources?.dateCreated}</p>--}%
            </div>
        </div>
</g:each>
    </div>
</div>