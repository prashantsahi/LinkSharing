<g:select name="visibility-${subs.id}" from="${bootcamp.Visibility.values()}"
          onchange="changeVisibility('${createLink(controller: 'topic', action: 'changeVisibility', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
          onchange="seriousNess('${createLink(controller: 'subscription', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<a  href="#topicInvite-${subs.id}" id="topic-${subs?.id}" data-toggle="modal" title="Send invitation"
   class="btn btn-default" aria-label="Left Align"
   style="text-decoration: none"><span class="glyphicon glyphicon-envelope" style="font-size: 20px"/>
</a>

%{--
<span id="editTopicLinkDiv-${subs.id}">
    <g:render template="/topic/editTopicLink" model="[subs: subs]"/>
</span>
--}%

<a href="javascript:void(0)" class="btn btn-default editTopic" data-topicId="${subs?.id}"
   aria-label="Left Align" title='Edit' data-ajax-url="${createLink(controller: "topic", action: "renderEditTopic")}">
    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
</a>

<g:if test="${flag}">
    <g:link class="noUnderline btn btn-default" aria-label="Left Align"
            title='Delete' controller="topic" action="deleteTopic" params="[topicId: subs?.id, flag: flag]">
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
    </g:link>
</g:if>

<g:else>
    <a href="javascript:void(0)" class="btn btn-default deleteTopic" id="topic-${subs.id}" aria-label="Left Align"
       title='Delete'
       data-ajax-url="${createLink(controller: "topic", action: "deleteTopic")}"
       data-topicId="${subs?.id}">
        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
    </a>
</g:else>

