<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2/6/2025
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Registration</h2>
    <form action="registration.rca" method="POST">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" required>

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lname" required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>

        <input type="submit" value="Register">
    </form>
</div>
</body>
</html>
