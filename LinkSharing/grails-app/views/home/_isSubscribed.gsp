<g:each in="${sub}" var="subs">

    <div class="media">
        <div class="media-left">

            <g:link controller="user" action="showProfile">
                <img width="70px" height="70px"
                     src="${createLink(controller: "user", action: 'showImage', params: [path: subs.createdBy.photoPath])}"/>
            </g:link>
        </div>

        <div class="media-body">
            <h4 class="media-heading"></h4>

            <a href="#">${subs?.name}</a>
            <br><br>
            <h5 class="des-head">@${subs.createdBy.username} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <g:link>Subscriptions</g:link> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link>Posts</g:link></h5>
            <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subs?.subscriptions?.size()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${subs?.resources?.size()}</h5>

            <g:select name="subs.seriousness"
                      from="${bootcamp.Seriousness.values()}"/>

            <ls:isEditable subscriber="${subs}"/>
        %{--<g:render template="isEditable"/>--}%
        %{--<select>
            <option>Private</option>
            <option>Edit</option>
            <option>Delete</option>
        </select>--}%

            <g:link class="btn btn-default" aria-label="Left Align" title='send invitation' controller="home"
                    action="">
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
            </g:link>
            <g:link class="btn btn-default" aria-label="Left Align" title='create topic' controller="home"
                    action="">
                <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
            </g:link>

            <g:link class="btn btn-default" title='Delete'>&nbsp;&nbsp;
                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
            </g:link>

        </div>

    </div>
</g:each>