<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Login</h3>
    </div>
    <div class="panel-body">
        <g:form class="form-box" name="login" controller="login">
            <div>
                <span style="width: 50%;">UserName/Email*</span>
                <g:textField name="username" placeholder="UserName"/>
            </div><br>
            <div>
                <span class="span-label1">Password*</span>
                <g:passwordField name="password" placeholder="Password"/>
            </div><br>

            <div >
                <span class="span-label1"><a href="#">Forgot Password</a></span>
                <span>				</span>
                <g:actionSubmit name="button" value="Login" action="loginHandler" style="float:right;margin-right: 150px"/>
            </div>
        </g:form>

    </div>
</div>