<div class="panel-body">
    <g:each in="${subscriptions}" var="topic">
        <div class="renderSubscribedDiv">
            <g:render template="/home/ajaxSubscription" model="[topic: topic]"/>
        </div>
    </g:each>
%{-- <util:remotePaginate controller="subscription" action="showSubscriptions"
                      total="${subscriptionCount}"
                      update="viewAll" max="${max}" offset="${offset}"
                      pageSizes="[5, 10, 20, 50, 100]"/>
--}%
</div>