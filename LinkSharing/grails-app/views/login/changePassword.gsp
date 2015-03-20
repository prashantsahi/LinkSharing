<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<title>Change Password</title>

<asset:stylesheet src="bootstrap.min.css"/>
<asset:stylesheet src="bootstrap-theme.min.css"/>
<asset:javascript src="jquery-2.1.3.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.validate.js"/>
<asset:javascript src="register.js"/>

<body>

<div class="panel panel-default" style="height:350px; width:500px;">
    <div class="panel-heading">
        <h3 class="panel-title">Change Password</h3>
    </div>

    <div class="panel-body">
        <g:form class="form-box" name="changePassword" controller="login">
            <div>
                <span class="span-label1">Email*</span>
                <g:textField name="email" placeholder="Email"/>
            </div><br>

            <div>
                <span class="span-label1">Password*</span>
                <g:textField name="password" placeholder="Password"/>
            </div><br>

            <div>
                <span class="span-label1">Confirm Password*</span>
                <g:textField name="confirmPassword" placeholder="Confirm your Password"/>
            </div><br>
            <g:actionSubmit name="updatePassword" value="submit" action="updatePassword"
                            style="float:left;margin-left: 50px"/>
        </g:form>

    </div>
</div>

</body>
</html>