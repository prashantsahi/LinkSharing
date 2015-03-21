%{--<div id="trendingTopic" class="modal fade">--}%
%{--<div class="modal-dialog">--}%
%{--<div class="modal-body">--}%

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Trending Topics <g:link style="float:right;color:#006dba;;">View All</g:link></h3>
    </div>

    <div class="panel-body">

        <g:each in="${trend}" var="subst">
            <ls:isSubscribed sub1="${subst}"/>
        </g:each>
    </div>
</div>
