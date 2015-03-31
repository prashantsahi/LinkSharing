<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Inbox  <input type="text" placeholder="search" style="float:right;"></h3>
    </div>

    <div class="panel-body">
        <g:each in="${resources}" var="resource">
            <div class="unreadResourceHide-${resource?.id}">
                <g:render template="/templates/inbox0rPostResource"
                          model='[resource: resource, ajaxClass: "inboxClass"]'/>
            </div>
        </g:each>
    </div> <!--panel body-->
</div>