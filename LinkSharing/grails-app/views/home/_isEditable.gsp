<g:select name="visibility-${subs.id}" from="${bootcamp.Visibility.values()}"
          onchange="changeVisibility('${createLink(controller: 'topic', action: 'changeVisibility', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
          onchange="seriousNess('${createLink(controller: 'subscription', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<a href="#topicInvite-${subs.id}" id="topic-${subs?.id}" data-toggle="modal" title="Send invitation" class="btn btn-default" aria-label="Left Align"
   style="text-decoration: none"><span class="glyphicon-envelope" style="font-size: 40px"/>
</a>
<g:link class="btn btn-default" aria-label="Left Align" title='Edit' controller="home"
        action="">
    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
</g:link>

<g:link class="btn btn-default" aria-label="Left Align" title='Delete' controller="topic" action="deleteTopic"
        params="[topicId: subs?.id]">
    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
</g:link>
