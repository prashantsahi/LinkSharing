<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Trending Topics <span class="panel-title"><g:link controller="home"
                                                                                  action="viewAllTrendingTopic"
                                                                                  style="float:right;">View All</g:link></span>
        </h3>
    </div>

    <div class="panel-body">

        <g:each in="${trendingTopics}" var="topic">
            <div class="renderSubscribedDiv">
                <g:render template="ajaxSubscription" model="[topic: topic]"/>
                <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
            </div>
        </g:each>
    </div>
</div>
