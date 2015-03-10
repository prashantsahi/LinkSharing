<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 27/2/15
  Time: 5:09 PM
--%>



<!DOCTYPE html>
<html lang="en">
<head>
    <title>Example of Bootstrap 3 Modals</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
%{--    <style type="text/css">
    .bs-example {
        margin: 20px;
    }
    </style>--}%
</head>

<body>
%{--<div class="bs-example">--}%
    <!-- Button HTML (to Trigger Modal) -->
    <a href="#sendInvitation" class="btn btn-lg btn-primary" data-toggle="modal">create document</a>
    <!-- Modal HTML -->
    <div id="sendInvitation" class="modal fade">
        <div class="modal-dialog">
                <div class="modal-body">
                    <g:render template="/templates/sendinvitation"/>
                </div>
        </div>
    </div>

%{--</div>--}%
</body>
</html>




%{--
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
<div class="col-md-4">
   <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Register</h3>
        </div>
        <div class="panel-body">
            <g:form name ="registration">
                <div>
                    <span class="span-label">FirstName</span>
                    <g:textField name="First Name" placeholder="First Name"/>
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
</html>--}%
