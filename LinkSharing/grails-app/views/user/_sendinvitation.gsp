<div id="sendInvitation" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="createTopicModal"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-body">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Send Invitation</h3>
                </div>

                <div class="panel-body">
                    <g:form class="form-box" controller="user">
                        <div>
                            <span class="span-label">Email Id*</span>
                            <g:textField name="emailId" placeholder="Email"/>
                        </div>

                        <br>

                        <div>
                            <span class="span-label">Topic*</span>
                            <g:select name="emailTopic" style="width:175px"
                                      from="${com.intelligrape.prashant.linksharing.Topic.list()}"
                                      optionKey="name"
                                      optionValue="name"/>
                        </div>

                        <br>

                        <div><br> <br>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <g:actionSubmit value="Invite" action="mail"/>
                            <span class="span-label"></span>
                            <input type="button" value="cancel" data-dismiss="modal"/>
                        </div>
                    </g:form>
                </div>

            </div>
        </div>
    </div>
</div>