<div class="searchedInboxResources">
    <div class="panel-body">
        <g:each in="${resources}" var="resource">
            <div class="unreadResourceHide-${resource?.id}">
                <g:render template="/templates/inbox0rPostResource"
                          model='[resource: resource, ajaxClass: "inboxClass"]'/>
            </div>
        </g:each>
    </div> <!--panel body-->
</div>
%{--</div>--}%