%{--<g:if test="${session['username']}">--}%
<a href="javascript:void(0)"
   data-ajax-url="${createLink(controller: "readingItem", action: "markAsRead")}"
   data-resource-id="${resource?.id}" class="noUnderline ${ajaxClass}">Mark As Read</a>
%{--</g:if>--}%