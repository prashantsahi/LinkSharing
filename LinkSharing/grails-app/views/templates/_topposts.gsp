<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Top Stories</h3>
    </div>
    <div class="panel-body">
        <g:each in="${ratings}" var="rating">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="/User.png" alt="...">
                </a>
            </div>
            <div class="media-body media-marg">

                <h4 class="media-heading">User name : <a href="#">Grails</a></h4>
                %{--Resource Name : ${rating?.resource}--}%

            </div>
        </div>
        </g:each>







    </div>

</div>