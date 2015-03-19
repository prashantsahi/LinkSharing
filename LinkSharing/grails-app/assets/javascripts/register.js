$(document).ready(function () {
    $('#registration').validate({
        rules: {
            firstName: "required",
            lastName: "required",
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
                equalTo: "#registration #password"
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
                minlength: "your password must consists of atleast 5 characters"
            },
            confirmPassword: {
                required: "Please provide the password",
                minlength: "your password must consists of atleast 5 characters",
                equalTo: "please enter the same pasword as above"
            },
            email: {
                required: "Please enter the email",
                email: "Please enter the valid email id"
            }
        }
    });

    $('#changePassword').validate({
        rules: {
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