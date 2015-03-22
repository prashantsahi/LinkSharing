<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Login</h3>
    </div>

    <div class="panel-body">
        <g:form class="form-box" name="login" controller="login">
            <div>
                <span style="width: 50px">UserName*</span>
                <g:textField name="username" placeholder="UserName"/>
            </div><br>

            <div>
                <span style="width: 50px">Password*</span>
                <g:passwordField name="password" placeholder="Password"/>
            </div><br>

            <div>
                <span class="span-label1"><g:link controller="login"
                                                  action="showForgotPassword">Forgot Password</g:link></span>
                <span></span>
                <g:actionSubmit name="button" value="Login" action="loginHandler"
                                style="float:right;margin-right: 150px"/>
            </div>
        </g:form>
    </div>
</div>

