

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
    <asset:stylesheet src="styling.css"></asset:stylesheet>
    <asset:stylesheet src="bootstrap-theme.min.css"></asset:stylesheet>
    <asset:javascript src="bootstrap.min.js"></asset:javascript>
    <script type="text/javascript" src="jquery.min.js"></script>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">

        <div class="navbar-header">

            <a class="navbar-brand" href="#">Link Sharing</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <form class="navbar-form navbar-right form-box" role="search">
                <div class="form-group">

                    <button type="button" class="btn btn-default" aria-label="Right Align">
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                    </button>

                    <button type="button" class="btn btn-default" aria-label="Right Align">
                        <span class="glyphicon glyphicon-file" aria-hidden="true"></span>
                    </button>


                    <input type="text" class="form-control" placeholder="Search">
                </div>

            </form>

        </div>

    </div>

</nav>

<div class="row">
    <div class="col-md-1">
    </div>
    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <asset:image class="media-object img-size" src="profile-icon.png"></asset:image>
                        </a>
                    </div>
                    <div class="media-body">
                            <h4 class="media-heading">Prashant Sahi</a> </h4>
                        @Prashant<br>
                        <h5 class="des-head">@Prashant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Topics<input type="text" placeholder="search" style="float:right;"></h3>
            </div>

            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <asset:image class="media-object img-size"   src="profile-icon.png" ></asset:image>
                        </a>
                    </div>


                    <div class="media-body">
                        <h4 class="media-heading"></h4>
                        <input type="text" style="width:200;" placeholder="Grails">
                        <input type="button" class="btn btn-primary" autocomplete="off" value="Save"><br>
                        <a href="#">grails</a>
                        <h5 class="des-head">@uday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30</h5>



                        <select align="right">
                            <option>Serious</option>
                            <option>Imp.</option>
                        </select>

                        <select>
                            <option>Private</option>
                            <option>Edit</option>
                            <option>Delete</option>
                        </select>


                        <button type="button" class="btn btn-default" aria-label="Left Align">
                            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        </button>

                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </button>

                    </div>
                </div>

            </div>
            <!--panel body-->
        </div>




    </div>
    <div class="col-md-1">
    </div>
    <div class="col-md-4">

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Profile</h3>
            </div>

            <div class="panel-body">
                <form>
                    <div>
                        <span class="span-label">FirstName</span>
                        <input type="text" placeholder="First Name">
                    </div><br>

                    <div id="div5">
                        <span class="span-label">LastName</span>
                        <input type="text" placeholder="Last Name">
                    </div><br>

                    <div>
                        <span class="span-label">UserName</span>
                        <input type="text" placeholder="User Name">
                    </div><br>


                    <div>
                        <span class="span-label">Photo</span>
                        <input type="file">

                    </div><br>

                    <div>
                        <g:submitButton name="submit" value="Update" class="btn btn-primary" autocomplete="off"/>
                    </div>

                    <form>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Change Password</h3>
            </div>

            <div class="panel-body">
                <g:form class="form-box" >
                    <div>
                        <span class="span-label">Password</span>
                        <input type="text"  placeholder="Password">
                    </div><br>

                    <div>
                        <span class="span-label">Confirm Password*</span>
                        <input type="password"  placeholder="Confirm Password">
                    </div><br>

                    <div>
                        <g:submitButton name="submit" value="Update" class="btn btn-primary" autocomplete="off"/>

                    </div>
                </g:form>
            </div>
        </div>
    </div>
    <div class="col-md-2">
    </div>
</div>
</div>
</body>
</html>