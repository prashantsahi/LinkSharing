<div id="createTopic" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-body">
            <div class="panel panel-default">
                %{--          <div class="panel-heading">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                  --}%%{--<h4 class="modal-title">create topics</h4>--}%%{--
                                  <h2 class="panel-title">Create Topic</h2>
                              </div>

                              --}%%{--<h3 class="panel-title">Create Topic(Pop Up)</h3>--}%%{--
                          </div>--}%

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
                            <g:actionSubmit value="Cancel" action="delete"/>
                        </div>
                    </g:form>
                </div>

            </div>

        </div>
    </div>
</div>
