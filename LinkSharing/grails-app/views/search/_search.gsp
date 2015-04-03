<div class="row">
    <div class="col-md-5">
        <g:render template="/home/trendingTopics" model="[trendingTopics: trending]"/>
        <ls:top rate="${rating}"/>
    </div>

    <div class="col-md-1"></div>

    <div class="col-md-6">

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Search for "${searchedText}"
                </h3>
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

    </div><!--col 6-->

</div><!--row-->
