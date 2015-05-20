<g:if test="${session['username']}">
    <a class="noUnderline" href="javascript:void(0)"
       data-ajax-url="${createLink(controller: "readingItem", action: "markAsRead")}"
       data-resource-id="${resource?.id}" class= ${ajaxClass}>Mark As Read</a>
</g:if>