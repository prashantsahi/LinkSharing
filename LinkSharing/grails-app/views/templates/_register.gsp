<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Register</h3>
    </div>

    <div class="panel-body">
        <g:form name="registration" controller="login">
            <div>
                <span class="span-label1">FirstName</span>
                <g:textField name="firstName"/>
            </div><br>

            <div id="div5">
                <span class="span-label1">LastName</span>
                <g:textField name="lastName" placeholder="Last Name"/>
            </div><br>

            <div>
                <span class="span-label1">Email</span>
                <g:textField name="email" placeholder="Email Id"/>
            </div><br>

            <div>
                <span class="span-label1">UserName</span>
                <g:textField name="username" placeholder="User Name"/>
            </div><br>

            <div>
                <span class="span-label1">Password</span>
                <g:passwordField name="password" placeholder="Password"/>
            </div><br>

            <div>
                <span class="span-label1">Confirm Password</span>
                <g:passwordField name="confirmPassword" placeholder="Retype Password"/>
            </div><br>

            <div>
                <span class="span-label1">Photo</span>
                <input type="file">

            </div><br>

            <div>
                <g:actionSubmit action="register" name="register" value="Register"
                                style="float:right; margin-right: 150px"/>
            </div>
        </g:form>
    </div>

</div>