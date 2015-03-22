<html>
<title>Forgot Password</title>
<asset:stylesheet src="bootstrap.min.css"/>
<asset:stylesheet src="bootstrap-theme.min.css"/>

<body>

<div class="panel panel-primary" style="height:200px; width:350px;">
    <div class="panel-heading">
        <h3 class="panel-title">Forgot Password</h3>
    </div>

    <div class="panel-body">
        <g:form class="form-box" name="login" controller="login">
            <div>
                <span style="width: 50%;">Email*</span>
                <g:textField name="email" placeholder="Email"/>
            </div><br>
            <g:actionSubmit name="button" value="submit" action="sendingMail"
                            style="float:left;margin-left: 50px"/>
        </g:form>
    </div>
</div>

</body>
</html>