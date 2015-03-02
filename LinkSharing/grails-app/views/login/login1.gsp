<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 25/2/15
  Time: 5:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name ="layout" content ="master">
    <title>Page2</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>

<body>

<div class="row">
    <div class="col-md-8">


            <g:render template="/templates/recentshare" model='[resources:"${res}"]'/>
           <g:render template="/templates/topposts" model='[ratings:"${rating}"]'/>
    </div>
    <div class="col-md-4">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Login</h3>
            </div>
            <div class="panel-body">
                <g:form class="form-box" name="login" controller="user">
                    <div>
                        <span>UserName/Email*</span>
                        <g:textField name="username" placeholder="UserName"/>
                    </div><br>
                    <div>
                        <span>Password*</span>
                        <g:passwordField name="password" placeholder="Password"/>
                    </div><br>

                    <div>
                        <span><a href="#">Forgot Password</a></span>
                        <span>				</span>
                        <g:actionSubmit name="button" value="Login" action="loginHandler"/>
                    </div>
                    </g:form>

            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Register</h3>
            </div>
            <div class="panel-body">
                <g:form name ="registration">
                    <div>
                        <span class="span-label">FirstName</span>
                        <g:textField name="First Name"/>
                    </div><br>
                    <div id="div5">
                        <span class="span-label" >LastName</span>
                        <g:passwordField name="lastname" placeholder="Last Name"/>
                    </div><br>
                    <div>
                        <span class="span-label">Email</span>
                        <g:textField name="email" placeholder="Email Id"/>
                    </div><br>

                    <div>
                        <span class="span-label">UserName</span>
                        <g:textField name="username" placeholder="User Name"/>
                    </div><br>

                    <div>
                        <span class="span-label">Password</span>
                        <g:passwordField name="password" placeholder="Password"/>
                    </div><br>
                    <div >
                        <span  class="span-label">Confirm Password</span>
                        <g:passwordField name="password" placeholder="Retype Password"/>
                    </div><br>

                    <div >
                        <span  class="span-label"> Photo </span>
                        <input type="file">

                    </div><br>
                    <div>
                        <g:submitButton name="register" value="Register"/>
                    </div>
                    </g:form>
            </div>


        </div>
    </div>
</div>

</body>
</html>