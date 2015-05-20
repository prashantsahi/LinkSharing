<%@ page import="com.intelligrape.prashant.linksharing.Topic; com.intelligrape.prashant.linksharing.User; com.intelligrape.prashant.linksharing.DocumentResource" %>



<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="documentResource.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="description" cols="40" rows="5" maxlength="1024" required=""
                value="${documentResourceInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'filePath', 'error')} ">
    <label for="filePath">
        <g:message code="documentResource.filePath.label" default="File Path"/>

    </label>
    <g:textField name="filePath" value="${documentResourceInstance?.filePath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'createdBy', 'error')} required">
    <label for="createdBy">
        <g:message code="documentResource.createdBy.label" default="Created By"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="createdBy" name="createdBy.id" from="${com.intelligrape.prashant.linksharing.User.list()}"
              optionKey="id" required="" value="${documentResourceInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'readingItems', 'error')} ">
    <label for="readingitems">
        <g:message code="documentResource.readingitems.label" default="Readingitems"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${documentResourceInstance?.readingitems ?}" var="r">
            <li><g:link controller="readingItem" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="readingItem" action="create"
                    params="['documentResource.id': documentResourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'readingItem.label', default: 'ReadingItem')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'resourceRatings', 'error')} ">
    <label for="resourceratings">
        <g:message code="documentResource.resourceratings.label" default="Resourceratings"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${documentResourceInstance?.resourceratings ?}" var="r">
            <li><g:link controller="resourceRating" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="resourceRating" action="create"
                    params="['documentResource.id': documentResourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resourceRating.label', default: 'ResourceRating')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: documentResourceInstance, field: 'topic', 'error')} required">
    <label for="topic">
        <g:message code="documentResource.topic.label" default="Topic"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="topic" name="topic.id" from="${com.intelligrape.prashant.linksharing.Topic.list()}" optionKey="id"
              required="" value="${documentResourceInstance?.topic?.id}" class="many-to-one"/>

</div>

