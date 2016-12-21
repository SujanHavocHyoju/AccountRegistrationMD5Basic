<%-- 
    Document   : index
    Created on : Dec 21, 2016, 12:17:37 AM
    Author     : HYOJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Yo Wassupp!</h1>
        
        <h1>Please Login or Register</h1>
        <a href="${pageContext.request.contextPath}/register">Register</a>
        
        <a href="${pageContext.request.contextPath}/login">Login</a>
    </body>
</html>
