<%-- 
    Document   : index
    Created on : Dec 20, 2016, 10:20:41 PM
    Author     : HYOJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
    </head>
    <body>
        <h1><u>Change Password</u></h1>

        <h2>Enter new Details</h2>
        <div>
            <form method="post" action="">
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
                    <button>Reset Password</button>
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
            }
            ;
        </script>
    </body>
</html>