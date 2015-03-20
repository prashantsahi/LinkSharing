<%@ page import="com.intelligrape.prashant.linksharing.Topic" %>
<div id="link" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="createTopicModal"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-body">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Share Link(Pop Up)</h3>
                </div>

                <div class="panel-body">
                    <g:form name="LinkResource" controller="linkResource" class="form-box">
                        <div>
                            <span class="span-label">Link*</span>
                            <g:textField name="linkResourceInstance.linkUrl"/>
                        </div>

                        <br>

                        <div>
                            <span class="span-label">Title*</span>
                            <g:textField name="linkResourceInstance.title"/>
                        </div>
                        <br>

                        <div>
                            <span class="span-label middletext">Description*</span>
                            <g:textArea name="linkResourceInstance.description" id="id" rows="4" cols="20"/>
                        </div>
                        <br>

                        <div>
                            <span class="span-label">Topic*</span>


                            <g:select name="linkResourceInstance.topic" style="width:175px"
                                      from="${subscribedTopics}"
                                      optionKey="id"
                                      optionValue="name"/>
                        </div>

                        <br>

                        <div>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <g:actionSubmit value="Share" action="save"/>
                            <span class="span-label"></span>
                            <span class="span-label"></span>
                            <input type="button" value="cancel" data-dismiss="modal"/>
                        </div>
                    </g:form>
                </div>

            </div>

        </div>
    </div>
</div>