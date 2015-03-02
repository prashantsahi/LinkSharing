<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Share Document(Pop Up)</h3>
    </div>
    <div class="panel-body">
        <g:form name ="document" controller="documentResource" class="form-box">
            <div>
                <span class="span-label">Document*</span>
                <g:textField name="documentResourceInstance.filePath"/>
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
                          from ="${com.intelligrape.prashant.linksharing.Topic.list().name}"/>
            </div>


            <br>

            <div><br> <br>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <g:actionSubmit  value="Share" action="save"/>
                <span class="span-label">				</span>
                <g:actionSubmit value="Cancel" action="delete"/>
            </div>
        </g:form>
    </div>s


</div>