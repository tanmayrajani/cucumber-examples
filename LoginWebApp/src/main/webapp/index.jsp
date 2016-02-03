<%@ page import="java.io.PrintWriter" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.min.css">
        <style>
            body {
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #eee;
            }
            .form-signin {
                max-width: 330px;
                padding: 15px;
                margin: 0 auto;
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin .checkbox {
                font-weight: normal;
            }
            .form-signin .form-control {
                position: relative;
                height: auto;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                padding: 10px;
                font-size: 16px;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>
        <title>Welcome</title>
    </head>
    <body>
        <div class="container">
            <form class="form-signin" method="post" action="login.jsp">
                <h2 class="form-signin-heading">Please sign in</h2>
                <div class="form-control">
                    <input type="text" name="uname" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
                </div>
                <div class="form-control">
                    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                </div>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
            <div class="row">
                <div class="form-signin">New User <a href="register.jsp">Register Here</a></div>
            </div>
        </div> <!-- /container -->
        <div>
            <%
                PrintWriter writer = new PrintWriter(out);
                if (request.getParameter("reason") == null) { }
                else {
                    writer.printf("<u>"+request.getParameter("reason")+"</u>!");
                }
            %>
        </div>
    </body>
</html>