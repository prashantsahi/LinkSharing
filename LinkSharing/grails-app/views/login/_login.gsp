<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Login</h3>
    </div>

    <div class="panel-body">
        <g:form class="form-box" name="login" method="POST"  uri="/j_spring_security_check">
            <div>
                <span class="span-label1">UserName*</span>
                <g:textField name="j_username" placeholder="UserName"/>
            </div><br>

            <div>
                <span class="span-label1">Password*</span>
                <g:passwordField name="j_password" placeholder="Password"/>
            </div><br>

            <div>
                <span><g:link class="noUnderline" controller="login"
                              action="showForgotPassword">Forgot Password</g:link></span>
                <span id="remember_me_holder" style="margin-left: 20px; color: #006dba">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                    <label for='remember_me'>Remember Me</label>
                </span>
                <br/><br/>
                <g:actionSubmit name="button" value="Login"
                                style="float:right;margin-right: 150px"/>
            </div>
        </g:form>
    </div>
</div>

