<div id="one" class="panel panel-primary" xmlns="http://www.w3.org/1999/html">
    <div class="panel-heading">
        <h3 class="panel-title">Subscriptions<span class="panel-title"><g:link style="float:right;"
                                                                                  controller="subscription"
                                                                                  action="viewAllSubscriptions">View All</g:link></span>
        </h3>
    </div>

    <div class="panel-body">
        <g:each in="${subscript}" var="topic">
            <div class="renderSubscribedDiv">
                <g:render template="ajaxSubscription" model="[topic: topic]"/>
            </div>
        </g:each>
    </div>
</div>