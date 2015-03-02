<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 26/2/15
  Time: 6:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name ="layout" content ="master">
    <title>Dashboard</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="jquery.min.js"></script>



</head>

<body>

<script>
    alert("User ${name} has successfully logged in")
</script>>

<div class="row">
    <div class="col-md-4">

        <div class="panel panel-default">
            <div class="panel-body">

                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img name="Mee" class="media-object" src="/home/intelligrape/Documents/bootcamp/bootcamp day6/resources/icons/User.png">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Prashant Sahi</h4>
                        <h5 class="des-head">@Grails</h5>
                        <br>
                        <h5 class="des-head">Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Topics</h5>
                    </div>
                </div>


            </div><!-- panel default -->
        </div><!-- panel body -->


       <g:render template="/templates/subscription"/>

       <g:render template="/templates/trendingtopics"/>
       <g:render template="/templates/sendinvitation"/>
        <!-- col md 4 --></div>
    <div class="col-md-8">

        <g:render template="/templates/inbox"/>
        <g:render template="/templates/sharelink"/>
        <g:render template="/templates/sharedocument"/>
        <g:render template="/templates/createtopic"/>

    </div><!--col 8-->
</div><!--row-->
</body>
</html>