<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Recent Shares</h3>
    </div>
    <div class="panel-body">
<g:each in="${res}" var="resources">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="/User.png" alt="...">
                </a>
            </div>
            <div class="media-body media-marg">
                <h4 class="media-heading">${resources?.createdBy}<a href="#">${resources?.topic?.name}</a></h4>
                <p>${resources?.description}</p>
                <p>${resources?.dateCreated}</p>
            </div>
        </div>
</g:each>
    </div>
</div>