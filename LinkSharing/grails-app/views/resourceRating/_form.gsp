<%@ page import="com.intelligrape.prashant.linksharing.Resource; com.intelligrape.prashant.linksharing.User; com.intelligrape.prashant.linksharing.ResourceRating" %>



<div class="fieldcontain ${hasErrors(bean: resourceRatingInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="resourceRating.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="score" from="${1..5}" class="range" required="" value="${fieldValue(bean: resourceRatingInstance, field: 'score')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceRatingInstance, field: 'resource', 'error')} required">
	<label for="resource">
		<g:message code="resourceRating.resource.label" default="Resource" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resource" name="resource.id" from="${com.intelligrape.prashant.linksharing.Resource.list()}" optionKey="id" required="" value="${resourceRatingInstance?.resource?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceRatingInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="resourceRating.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.intelligrape.prashant.linksharing.User.list()}" optionKey="id" required="" value="${resourceRatingInstance?.user?.id}" class="many-to-one"/>

</div>

