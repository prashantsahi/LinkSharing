<g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
          onchange="seriousNess('${createLink(controller: 'subscribe', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<g:link class="btn btn-default" aria-label="Left Align" title='send invitation' controller="home"
        action="">
    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
</g:link>
