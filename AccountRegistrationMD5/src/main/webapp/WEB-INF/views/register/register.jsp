<%-- 
    Document   : register
    Created on : Dec 21, 2016, 12:47:41 AM
    Author     : HYOJU
--%>

<%@page import="com.leapfrog.project.dao.impl.RegisterDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="registerDAO" class="com.leapfrog.project.dao.impl.RegisterDAOImpl"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
            <title>Register Page</title>
        </head>
        <body>

            <h1>Register</h1>
            <div>
                <form method="post" action="">
                    <div>
                        <label>Enter Username:</label>
                        <input type="text" name="username" required="required">
                    </div>
                    <div>
                        <label>Enter Email:</label>
                        <input type="email" name="email" required="required">
                    </div>
                    <div>
                        <label>Enter Password:</label>
                        <input type="password" name="passOne" id="passOne"  required="required">
                    </div>
                    <div>
                        <label>Confirm Password:</label>
                        <input type="password" name="passTwo" id="passTwo" onkeyup="checkPass();
                                return false;"  required="required">
                        <span id="confirmMessage" class="confirmMessage"></span>
                    </div>
                    <div>
                        <button>Register</button>
                    </div>
                    <div>
                    <a href="${pageContext.request.contextPath}/login">Go to Login Page</a>
                    </div>
                </form>
            </div>


        <script>
            function checkPass()
            {
                var passOne = document.getElementById('passOne');
                var passTwo = document.getElementById('passTwo');
                var message = document.getElementById('confirmMessage');
                var correct = "#66cc66";
                var error = "#ff6666";
                if (passOne.value == passTwo.value) {
                    passTwo.style.backgroundColor = correct;
                    message.style.color = correct;
                    message.innerHTML = "Passwords Match!"
                } else {
                    passTwo.style.backgroundColor = error;
                    message.style.color = error;
                    message.innerHTML = "Passwords Do Not Match!"
                }
            };
           
        </script>
    </body>
</html>

