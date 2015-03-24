<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="dashboardLayout">
</head>

<body>

<div class="row">
    <div class="col-md-1">
    </div>

    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <img width="150px" height="150px"
                             src="${createLink(controller: "user", action: 'showImage', params: [path: user.photoPath])}"/>
                    </div>

                    <div class="media-body">
                        <h4 class="media-heading">${user.username}</h4>
                        @${user.firstName}
                        <h5 class="des-head">Subscriptions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posts</h5>
                        <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            ${user.subscriptions.size()}
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.resources.size()}</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Topics<input type="text" placeholder="search" style="float:right;"></h3>
            </div>

            <g:each in="${user.topics}" var="topic">
                <div class="panel-body">
                    <div class="media">
                        <div class="media-left">
                            <img width="60px" height="60px"
                                 src="${createLink(controller: "user", action: 'showImage', params: [path: topic.createdBy.photoPath])}"/>
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading"></h4>
                            <input type="text" style="width:200px;" placeholder="Grails">
                            <input type="button" class="btn btn-primary" autocomplete="off" value="Save"><br>
                            %{--<a href="#">${topic.name}</a>--}%
                            <a href="${createLink(controller: 'topic', action: 'topicShow', params: ['topic': topic?.name])}">${topic?.name}</a>
                            <h5 class="des-head">@${topic.createdBy.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions &nbsp;&nbsp;Posts</h5>
                            <h5 class="des-head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topic.subscriptions.size()} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${topic.resources.size()}</h5>



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
            </g:each>
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
                <g:uploadForm name="editForm" controller="user" action="updateProfile">
                    <div>
                        <span class="span-label">FirstName</span>
                        <g:textField name="firstName" value="${user.firstName}" placeholder="First Name"/>
                    </div><br>

                    <div id="div5">
                        <span class="span-label">LastName</span>
                        <g:textField name="lastName" value="${user.lastName}" placeholder="Last Name"/>
                    </div><br>

                    <div>
                        <span class="span-label">Email</span>
                        <g:textField name="email" value="${user.email}" placeholder="Email"/>
                    </div><br>

                    <div>
                        <span class="span-label1">Photo</span>
                        <input type="file" name="file">
                    </div><br>

                    <div>
                        <g:submitButton name="submit" value="Update" class="btn btn-primary" autocomplete="off"/>
                    </div>

                </g:uploadForm>
            </div>
        </div>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Change Password</h3>
            </div>

            <div class="panel-body">
                <g:form class="form-box" name="changePassword" controller="login" action="updatePassword">
                    <div>
                        <span class="span-label">Password</span>
                        <g:textField name="password" placeholder="Password" value="${user.password}"/>
                    </div><br>

                    <div>
                    <g:hiddenField name="email" value="${user.email}"/>
                    </div>

                    <div>
                        <span class="span-label">Confirm Password*</span>
                        <g:passwordField name="confirmPassword" placeholder="Confirm Password"/>
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

</body>
</html>