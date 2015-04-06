<div class="panel-body resourceDiv-${resource?.id}" style="border: solid;border-color:dodgerblue  ">
    <div class="media">
        <div class="media-left">
            <g:link controller="user" action="showPublicProfile"
                    params="[user: resource?.createdBy?.id]">
                <img width="60px" height="60px"
                     src="${createLink(controller: "user", action: 'showImage', params: [path: resource?.createdBy?.photoPath])}"/>
            </g:link>
        </div>

        <div class="media-body">
            <h4 class="media-heading">${resource?.createdBy?.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': resource?.topic?.id])}"
                   style="float: right;">${resource?.topic?.name}</a>
            </h4>

            @${resource?.createdBy?.firstName}<span class="span-label"></span>
            <span class="span-label" style="float: right ">${resource?.lastUpdated}</span>
            <br>
            <br>

            <div class="rating" resource-score="${average}" data-resource-id="${resource.id}"
                 data-url="${createLink(controller: "resourceRating", action: "ratingResource")}"
                 style="float: right;">rating</div>
            ${resource.resourceRatings.size()}

        </div>
    </div>
    <br>
    ${resource?.description}
    <br><br>

    <g:render template="/templates/logos"/>
    <div style="float: right">
        <a href="#">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <g:if test="${flag}">
            <a href="javascript:void(0)" class="deleteResource" id="resource-${resource?.id}" aria-label="Left Align"
               title='Delete'
               data-ajax-url="${createLink(controller: "resource", action: "deletePost")}"
               data-resourceId="${resource?.id}" data-flag="${flag}">
                Delete
            </a>
        </g:if>

        <g:else>
            <g:link aria-label="Left Align"
                    title='Delete' controller="resource" action="deletePost"
                    params="[resourceId: resource?.id]">Delete</g:link>

        </g:else>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <ls:checkRes resource="${resource}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
</div>