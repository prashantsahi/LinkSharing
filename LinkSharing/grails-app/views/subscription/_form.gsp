<%@ page import="com.intelligrape.prashant.linksharing.Topic; com.intelligrape.prashant.linksharing.User; first_grail_project.Subscription" %>



<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'seriousness', 'error')} required">
	<label for="seriousness">
		<g:message code="subscription.seriousness.label" default="Seriousness" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="seriousness" from="${bootcamp.Seriousness?.values()}" keys="${bootcamp.Seriousness.values()*.name()}" required="" value="${subscriptionInstance?.seriousness?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="subscription.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${com.intelligrape.prashant.linksharing.Topic.list()}" optionKey="id" required="" value="${subscriptionInstance?.topic?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="subscription.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.intelligrape.prashant.linksharing.User.list()}" optionKey="id" required="" value="${subscriptionInstance?.user?.id}" class="many-to-one"/>

</div>

