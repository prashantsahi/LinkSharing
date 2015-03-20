<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 3/3/15
  Time: 2:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
    %{--<asset:stylesheet src="styling.css"></asset:stylesheet>--}%
    <asset:stylesheet src="bootstrap-theme.min.css"></asset:stylesheet>
    <asset:javascript src="bootstrap.min.js"></asset:javascript>
    <script type="text/javascript" src="jquery.min.js"></script>
    <meta name ="layout" content ="masterPage3">
</head>

<body>
%{--<nav class="navbar navbar-default">
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

</nav>--}%

<div class="row">
    <div class="col-md-1">
    </div>

    <div class="col-md-5">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <asset:image class="media-object img-size" src="profile-icon.png"></asset:image></a>
                    </div>

                    <div class="media-body">
                        <h4 class="media-heading">Prashant &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                href="#">Grails</a></h4>

                        @Prashant<span class="span-label"></span>2:45 pm 22,Feb,2015
                        <span class="span-label"></span>
                        <br>
                        <br>

                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>

                    </div>
                </div>
                <br>
                <br>
                Lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation. Replacing meaningful content that could be distracting with placeholder text may allow viewers to focus on graphic aspects such as font, typography, and page layout. It also reduces the need for the designer to come up with meaningful text, as they can instead use hastily generated lorem ipsum text.
                The lorem ipsum text is typically a scrambled section of De finibus bonorum et malorum, a 1st-century BC Latin text by Cicero, with words altered, added, and removed to make it nonsensical, improper Latin.
                A variation of the ordinary lorem ipsum text has been used in typesetting since the 1960s or earlier, when it was popularized by advertisements for Letraset transfer sheets. It was introduced to the Information Age in the mid-1980s by Aldus Corporation, which employed it in graphics and word processing templates for its desktop publishing program, PageMaker, for the Apple Macintosh.
                <br><br>
                <a href="#"><asset:image class="icon-size" src="facebook.png"></asset:image></a>

                <a href="#"><asset:image class="icon-size" src="google_plus.png"></asset:image></a>

                <a href="#"><asset:image class="icon-size" src="twitter.png"></asset:image></a>

                <a href="#">Download</a>&nbsp;&nbsp;&nbsp;
                <a href="#">View Full Size</a>&nbsp;&nbsp;&nbsp;
                <a href="#">Mark As Read</a>&nbsp;&nbsp;&nbsp;
                <a href="#">View Post</a>
            </div>
        </div>
    </div>

    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Trending topics</h3>
            </div>

            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <asset:image class="media-object img-size" src="profile-icon.png"></asset:image>
                        </a>
                    </div>

                    <div class="media-body">
                        <h5 class="media-heading">Prashant Sahi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                href="#">Grails</a>&nbsp;&nbsp;&nbsp;&nbsp;(Private)</h5>
                        <h5 class="des-head">@Prashant&nbsp;&nbsp;&nbsp;&nbsp;   Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30</h5>

                    </div>

                </div>

                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <asset:image class="media-object img-size" src="profile-icon.png"></asset:image>

                        </a>
                    </div>

                    <div class="media-body">
                        <h5>class="media-heading">Prashant Sahi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                href="#">Grails</a></h5>

                        <a href="#">Grails</a>
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
        </div>

        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>