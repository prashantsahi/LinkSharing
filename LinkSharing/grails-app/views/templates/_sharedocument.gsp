<div id="document" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="createTopicModal"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-body">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Share Document</h3>
                </div>

                <div class="panel-body">
                    <g:uploadForm name="document" controller="documentResource" class="form-box">
                        <div>
                            <span class="span-label">Document*</span>
                            <input type="file" name="file"/>
                        </div>

                        <br>

                        <div>
                            <span class="span-label">Title*</span>
                            <g:textField name="documentResourceInstance.title"/>
                        </div>
                        <br>

                        <div>
                            <span class="span-label middletext">Description*</span>
                            <g:textArea name="documentResourceInstance.description" id="id" rows="4" cols="20"/>
                        </div>

                        <br>

                        <div>
                            <span class="span-label">Topic*</span>


                            <g:select name="documentResourceInstance.topic" style="width:175px"
                                      from="${subscribedTopics}"
                                      optionKey="id"
                                      optionValue="name"/>
                        </div>


                        <br>

                        <div><br> <br>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <g:actionSubmit value="Share" action="save"/>
                            <span class="span-label"></span>
                            <input type="button" value="cancel" data-dismiss="modal"/>                        </div>
                    </g:uploadForm>
                </div>

            </div>

        </div>
    </div>
</div>