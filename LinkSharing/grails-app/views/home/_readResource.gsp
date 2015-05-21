%{--<g:if test="${session['username']}">--}%
<a href="javascript:void(0)"
   data-ajax-url="${createLink(controller: "readingItem", action: "markAsRead")}"
   data-resource-id="${resource?.id}" class="${ajaxClass} ${ajaxClass}">Mark As Unread</a>
%{--</g:if>--}%