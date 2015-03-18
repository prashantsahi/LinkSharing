<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Login</h3>
    </div>

    <div class="panel-body">
        <g:form class="form-box" name="login" controller="login">
            <div>
                <span style="width: 50%;">UserName*</span>
                <g:textField name="username" placeholder="UserName"/>
            </div><br>

            <div>
                <span class="span-label1">Password*</span>
                <g:passwordField name="password" placeholder="Password"/>
            </div><br>

            <div>
                <span class="span-label1"><g:link controller="login" action="showForgotPassword">Forgot Password</g:link></span>
                <span></span>
                <g:actionSubmit name="button" value="Login" action="loginHandler"
                                style="float:right;margin-right: 150px"/>
            </div>
        </g:form>


       %{-- <div id="forget" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="forgotPasswordModal"
             aria-hidden="true">

            <div class="modal-dialog">
                <div class="modal-body">
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <h3 class="panel-title">Forgot Password</h3>
                        </div>

                        <div class="panel-body">
                            <g:form class="form-box" name='forgotPassword' controller="login">
                                <div>
                                    <span class="span-label">Email*</span>
                                    <g:textField name="email"/>
                                </div>
                                <br>

                                <div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <g:actionSubmit value="Submit" action="sendMail"/>
                                    <span class="span-label"></span>
                                    <input type="button" value="cancel" data-dismiss="modal"/>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
--}%
    </div>
</div>

