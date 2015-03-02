<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Create Topic(Pop Up)</h3>
    </div>
    <div class="panel-body">
        <g:form class="form-box" name ='topic' controller="topic">
            <div>
                <span class="span-label">Name*</span>
                <g:textField name="topicInstance.name"/>
            </div>

            <br>

            <div>
                <span class="span-label">Visibility*</span>
                <g:select name="topicInstance.visibility" from="${['Public', 'Private']}"/>

            </div>

            <br>

            <div><br>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:actionSubmit value="Save" action="save"/>
                <span class="span-label">				</span>
                <g:actionSubmit value="Cancel" action="delete"/>
            </div>
        </g:form>
    </div>


</div>





<%--
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Create Topic(Pop Up)</h3>
    </div>
    <div class="panel-body">
        <g:form controller="topic" class="form-box">
            <div>
                <span class="span-label">Topic name</span>
                <g:textField name="topicInstance.topicName"/>
            </div>
            <br>
            <div>
                <span class="span-label">Visibility*</span>
                <g:select name="topicInstance.visibility" from="${['Public', 'Private']}"/>
            </div>
            <br>
            <div><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:actionSubmit value="save" action="save"/>
                <span class="span-label"></span>
                <g:actionSubmit value="cancel" action="delete"/>
            </div>
        </g:form>
    </div>
</div>
--%>