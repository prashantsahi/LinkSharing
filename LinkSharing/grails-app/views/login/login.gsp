<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>::Login::</title>
    <meta name="layout" content="master">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
<%--
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <a class="navbar-brand" href="#" style="color:blue">Link sharing</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
--%>
<div class="row">
    <div class="col-md-8">

    </div>

    <div class="col-md-4">
        <!--
	login form
	-->
        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">Login</h3>
            </div>

            <g:form name="myForm" controller="user" >
                Username<g:textField name="username"/><br>
                password<g:passwordField name="password"/><br>
                <g:actionSubmit name="login" value="login" action="loginHandler" />
            </g:form>
        <%--         <label style="width:150px">Email/Username* </label><input type="textbox"/>
                 <br><br>

                 <label style="width:150px">Password*</label><input type="textbox"><br><br>
                 <a href="#">Forgot Password</a>
                 <input type ="button" value="Login" style="float:right ;margin-right:100px">
        --%>

        </div>




        <!--
	registration form
	-->

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Register</h3>
            </div>

            <div class="panel-body">

                <form class="loginform" style="padding-left:10px;margin-top:10px">
                    <label style="width:150px">First Name*</label><input type="text"/>
                    <br><br>

                    <label style="width:150px">Last Name*</label><input type="text"><br><br>
                    <label style="width:150px">Email*</label><input type="text"/>
                    <br><br>

                    <label style="width:150px">Username*</label><input type="text"/>
                    <br><br>

                    <label style="width:150px">Password*</label><input type="text"><br><br>

                    <label style="width:150px">Confirm password*</label><input type="text"><br><br>
                    <label style="width:150px">Photo*</label>
                    <input type="file"/>
                    <input type="button" value="register" style="float:right;margin-right:100px;"/>

                </form>

            </div>
        </div>

    </div>
</div>

</body>
</html>

