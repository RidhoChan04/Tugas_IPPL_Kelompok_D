<%-- 
    Document   : login
    Created on : 20 Nov 2024, 20.11.18
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameRecce Login</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #002b40;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: #e0e0e0;
      width: 80%;
      max-width: 900px;
      height: 400px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px;
    }

    .logo {
      margin-left: 20px;
      font-size: 2rem;
      color: #8bc8bd;
      font-weight: bold;
    }

    .logo span {
      color: #7fb3d4;
    }

    .login-box {
      background-color: #749aa8;
      border-radius: 10px;
      width: 40%;
      height: 80%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .login-box h2 {
      color: white;
      font-size: 2rem;
      margin-bottom: 20px;
    }

    .login-box input {
      width: 80%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      outline: none;
      font-size: 1rem;
    }

    .login-box input[type="text"],
    .login-box input[type="password"] {
      background-color: #dde6e9;
    }

    .login-box button {
      width: 80%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #002b40;
      color: white;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .login-box button:hover {
      background-color: #003b57;
    }

    .login-box a {
      color: #ffffff;
      text-decoration: none;
      font-size: 0.9rem;
      margin-top: 10px;
    }

    .login-box a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo">
      Game<span>Recce</span>
      
    </div>
    <div class="login-box">
      <h2>Log In</h2>
      <form action="/User" method="post">
      <input type="hidden" name="action" value="login">
      <input type="text" name="username" placeholder="&#xf007; Username" style="font-family: Arial, FontAwesome;">
      <input type="password" name="password" placeholder="&#xf023; Password" style="font-family: Arial, FontAwesome;">
      <button>Login</button>
      </form>
      <a href="#">No account yet? <span style="text-decoration: underline;">Register</span></a>
    </div>
  </div>
</body>
</html>
