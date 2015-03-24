<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="dashboardLayout">
</head>

<body>

<div class="row"><br>
    <br><br>

    <div class="col-md-2"></div>

    <div class="col-md-8">
        <table border="1px" class="table table-hover">
            <tr>
                <td>UserId</td>
                <td>First Name</td>
                <td>LastName</td>
                <td>UserName</td>
                <td>Email</td>
                <td>Manage</td>
            </tr>
            <g:each in="${userList}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <g:if test="${user.active}">
                        <td><g:link controller="user" action="deactivate"
                                    params="[userId: user.id]">Active</td></g:link></g:if>
                    <g:else><td><g:link controller="user" action="activate"
                                        params="[userId: user.id]">Deactivated</td></g:link></g:else>
                </tr>
            </g:each>
        </table>
    </div>

    <div class="col-md-2"></div>
</div>
</body>
</html>
