<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 25/2/15
  Time: 5:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="assets/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/css/application.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="assets/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="assets/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <a class="navbar-brand" href="#">Link Sharing</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>

            </form>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>



<div class="row">
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Recent Shares</h3>
            </div>
            <div class="panel-body">

                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png" alt="...">
                        </a>
                    </div>
                    <div class="media-body media-marg">
                        <h4 class="media-heading">Imran<a href="#">Grails</a></h4>
                        I work at Intelligrape Software Pvt.Ltd.
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png" alt="...">
                        </a>
                    </div>
                    <div class="media-body media-marg">
                        <h4 class="media-heading">Ankur Tripathi<a href="#">Grails</a></h4>
                        I work at Intelligrape Software Pvt.Ltd.
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png" alt="...">
                        </a>
                    </div>
                    <div class="media-body media-marg">
                        <h4 class="media-heading">Uday Pratap Singh

                            <a href="#">Grails</a></h4>
                        I work at Intelligrape Software Pvt.Ltd.
                    </div>
                </div>

            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Top Stories</h3>
            </div>
            <div class="panel-body">

                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png" alt="...">
                        </a>
                    </div>
                    <div class="media-body media-marg">
                        <h4 class="media-heading">Uday Pratap Singh<a href="#">Grails</a></h4>
                        I work at Intelligrape Software Pvt.Ltd.
                    </div>
                </div>








            </div>

        </div>
    </div>
    <div class="col-md-4">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Login</h3>
            </div>
            <div class="panel-body">
                <g:form class="form-box" name="">
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
                        <g:submitButton name="button" value="Login"/>
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