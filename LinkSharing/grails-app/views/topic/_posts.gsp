<div class="searchedPostResources">
    <div class="panel-body">
        <g:each in="${resources}" var="resource">
            <div class="changeIsRead-${resource?.id}">
                <g:render template="/templates/inbox0rPostResource"
                          model='[resource: resource, ajaxClass: "topicPostClass"]'/>
            </div>
        </g:each>
    </div> <!--panel body-->
</div>