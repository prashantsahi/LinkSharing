<div id="createTopic" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="createTopicModal"
     aria-hidden="true">

    <div class="modal-dialog">
        <div class="modal-body">
            <div class="panel panel-primary">

                <div class="panel-heading">
                    <h3 class="panel-title">Create topic</h3>
                </div>

                <div class="panel-body">
                    <g:form class="form-box" name='topic' controller="topic">
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

                        <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <g:actionSubmit value="Save" action="save"/>
                            <span class="span-label"></span>
                            <input type="button" value="cancel" data-dismiss="modal"/>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
