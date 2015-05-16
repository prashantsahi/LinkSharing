<g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
          onchange="seriousNess('${createLink(controller: 'subscription', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>


<a href="#topicInvite-${subs.id}" id="topic-${subs?.id}" data-toggle="modal" title="Send invitation"
   class="btn btn-default" aria-label="Left Align"
   style="text-decoration: none"><span class="glyphicon glyphicon-envelope" style="font-size: 20px"/>
</a>
