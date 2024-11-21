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
      max-width: 1000px;
      height: 500px;
      border-radius: 15px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px;
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    .logo {
      font-size: 2.5rem;
      color: #8bc8bd;
      font-weight: bold;
      margin-left: 20px;
    }

    .logo span {
      color: #7fb3d4;
    }

    .login-box {
      background-color: #749aa8;
      width: 40%;
      height: 80%;
      border-radius: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 30px;
      box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
    }

    .login-box h2 {
      font-size: 2rem;
      font-weight: bold;
      color: #ffffff;
      margin-bottom: 20px;
    }

    .login-box input {
      width: 80%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      outline: none;
      font-size: 1rem;
      background-color: #dde6e9;
      font-family: Arial, FontAwesome;
    }

    .login-box button {
      width: 80%;
      padding: 12px;
      margin-top: 20px;
      border: none;
      border-radius: 5px;
      background-color: #002b40;
      color: white;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    }

    .login-box button:hover {
      background-color: #003b57;
      transform: translateY(-2px);
    }

    .login-box a {
      margin-top: 10px;
      font-size: 0.9rem;
      color: #ffffff;
      text-decoration: none;
    }

    .login-box a span {
      text-decoration: underline;
      cursor: pointer;
    }

    .login-box a:hover span {
      color: #dde6e9;
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
        <input type="text" name="username" placeholder="&#xf007; Username">
        <input type="password" name="password" placeholder="&#xf023; Password">
        <button type="submit">Login</button>
      </form>
      <a href="/views/register.jsp">No account yet? <span>Register</span></a>
    </div>
  </div>
</body>
</html>

