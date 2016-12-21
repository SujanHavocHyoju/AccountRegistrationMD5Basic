<%-- 
    Document   : login
    Created on : Dec 21, 2016, 12:24:13 AM
    Author     : HYOJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>

        <h1>Login</h1>
        <div>
            <form method="post" action="">
                <div>
                    <label>Username:</label>
                    <input type="text" name="username" required="required">
                </div>
                <div>
                    <label>Password:</label>
                    <input type="password" name="pass1" id="password"  required="required"">
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/forgot">Forgot Password</a>
                </div>
                <div>
                    <button >Login</button>
                </div>
            </form>
        </div>

    </body>
</html>

