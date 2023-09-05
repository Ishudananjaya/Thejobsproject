<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- You can create a CSS file for styling -->
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="loginServlet" method="post">
            <div class="input-container">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="button-container">
                <button type="submit">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
