<%-- 
    Document   : forgot
    Created on : Dec 21, 2016, 12:33:25 AM
    Author     : HYOJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        <h1>Enter the provided Hashcode:</h1>
        <form action="" method="post">
        <label>Enter confirmation hashcode provided during registration.</label>
        <input type="text" name="hashcode" required="required"/>
        <button>Request New Password</button>
        </form>
    </body>
</html>
