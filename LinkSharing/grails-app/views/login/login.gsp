<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="master">
    %{--<asset:javascript src="register.js"/>--}%
    <title>Login Page</title>
</head>

<body>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>
<div class="row">
    <div class="col-md-8">
        <div id="recentshares">
            <ls:recentShare resources="${res}" resCnt="${resCount}"/>
        </div>
        <ls:top rate="${rating}"/>
    </div>

    <div class="col-md-4">
        <g:render template="/login/login"/>
        <g:render template="/login/register"/>
    </div>
</div>
%{--<script>
    $(document).ready(function () {
        $('#registration').validate({
            rules: {
                firstName: {required: true},
                lastName: {required: true},
                username: {
                    required: true,
                    minlength: 3
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirmPassword: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                }
            },

            messages: {
                firstName: "Please Enter your first name",
                lastName: "Please enter your lastname",
                username: {
                    required: "Please Enter username",
                    minlength: "your username must consists of atleast 3 characters"
                },
                password: {
                    required: "Please provide the password",
                    minlength: "your username must consists of atleast 5 characters"
                },
                confirmPassword: {
                    required: "Please provide the password",
                    minlength: "your username must consists of atleast 5 characters",
                    equalTo: "please enter the same pasword as above"
                },
                email: {
                    required: "Please enter the email",
                    email: "Please enter the valid email id"
                }
            }
        });
    });

</script>--}%

</body>
</html>