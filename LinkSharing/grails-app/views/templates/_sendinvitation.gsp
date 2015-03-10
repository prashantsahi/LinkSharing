<div id="sendInvitation" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-body">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Send Invitation</h3>
                </div>

                <div class="panel-body">
                    <g:form class="form-box">
                        <div>
                            <span class="span-label">Email Id*</span>
                            <g:textField name="emailId" placeholder="Email"/>
                        </div>

                        <br>

                        <div>
                            <span class="span-label">Topic*</span>
                            <select style="width:175px">
                                <option>----select---</option>
                                <option>Grails</option>
                                <option>Mobility</option>
                                <option>AWS</option>
                                <option>Adobe CQ</option>
                            </select>

                        </div>

                        <br>

                        <div><br> <br>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <g:actionSubmit  value="Invite"/>
                            <span class="span-label"></span>
                            <g:actionSubmit value="Cancel"/>
                        </div>
                    </g:form>
                </div>

            </div>
        </div>
    </div>
</div>