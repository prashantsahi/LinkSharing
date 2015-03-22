<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Register</h3>
    </div>

    <div class="panel-body">
        <g:uploadForm name="registration" controller="login" id="registration">
            <div>
                <span class="span-label1">FirstName</span>
                <g:textField name="firstName" id="firstName"/>
            </div><br>

            <div id="div5">
                <span class="span-label1">LastName</span>
                <g:textField name="lastName" placeholder="Last Name" id="lastName"/>
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
                <g:textField name="password"  placeholder="Password"/>
            </div><br>

            <div>
                <span class="span-label1">Confirm Password</span>
                <g:textField name="confirmPassword" placeholder="Retype Password"/>
            </div><br>

            <div>
                <span class="span-label1">Photo</span>
                <input type="file" name="file">

            </div><br>

            <div>
                <g:actionSubmit action="register" name="register" value="Register"
                                style="float:right; margin-right: 150px"/>
            </div>
        </g:uploadForm>

    </div>

</div>

