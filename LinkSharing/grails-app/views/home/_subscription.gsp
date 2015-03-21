<div id="one" class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Subscriptions   <g:link style="float:right;color:#0055aa;" controller="subscription" action="viewAllSubscriptions">View All</g:link></h3>
    </div>

    <div class="panel-body">
        <g:each in="${subscript}" var="subst">
            <ls:isSubscribed sub1="${subst}"/>
        </g:each>
    </div>
</div>