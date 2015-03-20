%{--<div id="trendingTopic" class="modal fade">--}%
%{--<div class="modal-dialog">--}%
%{--<div class="modal-body">--}%

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Trending Topics <g:link style="float:right;">View All</g:link></h3>
    </div>

    <div class="panel-body">
    %{--  <g:each in="${trend}" var="trends">

      <div class="media">
          <div class="media-left">
              <g:link controller="user" action="showProfile">
                  <img width="70px" height="70px"
                       src="${createLink(controller: "user", action: 'showImage', params: [path: trends.createdBy.photoPath])}"/>
              </g:link>

          </div>

          <div class="media-body">
              <h4 class="media-heading"></h4>

              <g:link>${trends.name}</g:link>
              <br><br>
              <h5 class="des-head">@${trends.createdBy.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <g:link>Subscriptions</g:link> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link>Posts</g:link></h5>
              <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${trends.subscriptions.size()}
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  ${trends.resources.size()}</h5>

              <br>
              <g:link>Subscribe</g:link>

          </div>

      </div>
      </g:each>
    --}%

        <g:each in="${trend}" var="trends">

            <div class="media">
                <div class="media-left">
                    <g:link controller="user" action="showProfile">
                        <img width="70px" height="70px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: trends.createdBy.photoPath])}"/>
                    </g:link>

                </div>

                <div class="media-body">
                    <h4 class="media-heading"></h4>

                    <g:link>${trends.name}</g:link>
                    <br><br>
                    <h5 class="des-head">@${trends.createdBy.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <g:link>Subscriptions</g:link> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link>Posts</g:link></h5>
                    <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${trends.subscriptions.size()}
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${trends.resources.size()}</h5>

                    <g:select name="trends.seriousness"
                              from="${bootcamp.Seriousness.values()}"/>

                    <g:select name="trends.visibility"
                              from="${bootcamp.Visibility.values()}"/>


                    <button type="button" class="btn btn-default" aria-label="Left Align">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    </button>

                    <button type="button" class="btn btn-default">
                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                    </button>

                </div>
            </div>
        </g:each>

    </div>
</div>
