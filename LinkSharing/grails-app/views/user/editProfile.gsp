<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Profile</title>
    <meta name="layout" content="userLayout">
</head>

<body>
<div class="globalSearchDiv">
    <div class="row">
        <div class="col-md-1">
        </div>

        <div class="col-md-5">
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
                    <g:render template="/home/ajaxSubscription" model="[topic: topic]"/>
                    <g:render template="/templates/topicInvitationMail" model='[topic: topic]'/>
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

        <div class="col-md-1">
        </div>
    </div>
</div>

</body>
</html>