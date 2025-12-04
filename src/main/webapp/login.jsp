<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>FoodFinder | Login</title>
  <link rel="stylesheet" href="auth.css">
</head>
<body>
  <div class="auth-container">
    <h2>Welcome Back 👋</h2>
    <form action="callingloginservlet" method="post">
      <input type="text" name="username" placeholder="Username" required>
      <input type="password" name="password" placeholder="Password" required>
      <button type="submit">Login</button>
      <p>New to FoodFinder? <a href="register.html">Create an account</a></p>
    </form>

    <% String error = (String) request.getAttribute("error");
       if (error != null) { %>
      <p style="color:red;"><%= error %></p>
    <% } %>
  </div>
</body>
</html>
