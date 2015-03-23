<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Trending Topics <span class="panel-title"><g:link controller="home"
                                                                                  action="viewAllTrendingTopic"
                                                                                  style="float:right;">View All</g:link></span>
        </h3>
    </div>

    <div class="panel-body">

        <g:each in="${trend}" var="subst">
            <div class="renderSubscribedDiv">
                <g:render template="ajaxSubscription" model="[subst: subst]"/>
            </div>
        </g:each>
    </div>
</div>
