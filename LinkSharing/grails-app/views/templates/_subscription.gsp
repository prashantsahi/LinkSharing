<div id="one" class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Subscriptions   <g:link style="float:right;">View All</g:link></h3>
    </div>

    <div class="panel-body">
        <div class="media">
            <div class="media-left">
                %{--<a href="#">
                    --}%%{--<img class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png"  alt="Displayed Alt !!!">--}%%{--
                    <asset:image src="linksharing/user.jpg" width="60px" height="60px" class="media-object"/>
                </a>--}%

                <g:link controller="user" action="showProfile">
                %{--<asset:image class="media-object" src="linksharing/user.jpg" width="60px" height="60px"/>--}%
                    <img width="70px" height="70px"
                         src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                </g:link>
            </div>

            <div class="media-body">
                <h4 class="media-heading"></h4>

                <a href="#">Grails</a>
                <br><br>
                <h5 class="des-head">@uday &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>

                <br>

                <select>
                    <option>Serious</option>
                    <option>Imp.</option>
                </select>

                <select>
                    <option>Private</option>
                    <option>Edit</option>
                    <option>Delete</option>
                </select>

                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                </button>

                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                </button>

            </div>

        </div>

        <div class="media">
            <div class="media-left">
                <a href="#">
                    <asset:image src="linksharing/user.jpg" width="60px" height="60px" class="media-object"/></a>
            </div>

            <div class="media-body">
                <h4 class="media-heading"></h4>

                <a href="#">Grails</a>

                <h5 class="des-head">@uday &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>

                <br>

                <select align="right">
                    <option>Serious</option>
                    <option>Imp.</option>
                </select>


                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                </button>

            </div>
        </div>

    </div>
</div>