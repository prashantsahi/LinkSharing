<%@ page import="com.intelligrape.prashant.linksharing.LinkResource" %>



<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="linkResource.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" required="" value="${linkResourceInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="linkResource.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${com.intelligrape.prashant.linksharing.User.list()}" optionKey="id" required="" value="${linkResourceInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'linkUrl', 'error')} required">
	<label for="linkUrl">
		<g:message code="linkResource.linkUrl.label" default="Link Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="linkUrl" required="" value="${linkResourceInstance?.linkUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'readingItems', 'error')} ">
	<label for="readingitems">
		<g:message code="linkResource.readingitems.label" default="Readingitems" />

	</label>

<ul class="one-to-many">
<g:each in="${linkResourceInstance?.readingitems?}" var="r">
    <li><g:link controller="readingItem" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="readingItem" action="create" params="['linkResource.id': linkResourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'readingItem.label', default: 'ReadingItem')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'resourceRatings', 'error')} ">
	<label for="resourceratings">
		<g:message code="linkResource.resourceratings.label" default="Resourceratings" />

	</label>

<ul class="one-to-many">
<g:each in="${linkResourceInstance?.resourceratings?}" var="r">
    <li><g:link controller="resourceRating" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resourceRating" action="create" params="['linkResource.id': linkResourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resourceRating.label', default: 'ResourceRating')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="linkResource.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${linkResourceInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linkResourceInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="linkResource.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${com.intelligrape.prashant.linksharing.Topic.list()}" optionKey="id" required="" value="${linkResourceInstance?.topic?.id}" class="many-to-one"/>

</div>

