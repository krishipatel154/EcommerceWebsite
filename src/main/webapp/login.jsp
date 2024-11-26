<%-- 
    Document   : login
    Created on : Nov 12, 2024, 6:50:31 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/links.jsp" %>
    </head>
    <body>
        <%@include file="/includes/head.jsp" %>
        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">User Login</div>
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-group">
                        <label>Email Address: </label>
                        <input type="email" class="form-control" name="login-email" placeholder="Enter your Email.." required />
                        </div>
                        <div class="form-group">
                        <label>Password: </label>
                        <input type="password" class="form-control" name="login-password" placeholder="Enter your Password.." required />
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
