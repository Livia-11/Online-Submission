<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2/6/2025
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration</title>
</head>
<body>
<h2>${formName}</h2>
<form action="registration.rca" method="POST">
    <label> FirstName</label><input type="text" name="fname"><br>
    <label> LastName</label><input type="text" name="lname"><br>
    <label> Email</label><input type="text" name="email"><br>
    <input type="submit" value="Register">
</form>
</body>
</html>
