<g:select name="visibility-${subs.id}" from="${bootcamp.Visibility.values()}"
          onchange="changeVisibility('${createLink(controller: 'topic', action: 'changeVisibility', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<g:select name="seriousness-${subs.id}" from="${bootcamp.Seriousness.values()}"
          onchange="seriousNess('${createLink(controller: 'subscription', action: 'changeSeriousness', params: [subscribedTopic: subs.id])}',${subs.id})"/>

<g:link class="btn btn-default" aria-label="Left Align" title='send invitation' controller="home"
        action="">
    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
</g:link>
<g:link class="btn btn-default" aria-label="Left Align" title='create topic' controller="home"
        action="">
    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
</g:link>

<g:link class="btn btn-default" title='Delete'>&nbsp;&nbsp;
    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
</g:link>