<%-- 
    Document   : register
    Created on : 20 Nov 2024, 20.14.56
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameRecce Sign Up</title>
  <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameRecce Sign Up</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: url('/gambar/bckground_figma.jpg') no-repeat center center fixed;
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: #D9D9D9; /* Transparansi untuk menampilkan latar belakang */
      width: 100%;
      max-width: 800px;
      height: 100%;
      margin-right:-1000px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 200px;
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    .logo-section img {
      width: 700px;
      height: 700px;
      border-radius: 35px;
      position: relative;
      left:-700px
    }

    .logo-section h1 {
      color: #ffffff;
      font-size: 2.5rem;
      text-align: center;
      margin-top: 20px;
    }

    .form-section {
      width: 50%;
      padding: 20px;
      position: relative;
      left:-650px;
    }

    .form-section h2 {
      font-size: 4rem;
      width: 300px;
      color: #000000;
      margin-bottom: 10px;
  
    }

    .form-section p {
      color: #28595E;
      font-size: 1rem;
      margin-bottom: 20px;
    }

    .form-section a {
      position: relative;
      top: -220px;
      color: #879FA2;
      text-decoration: none;
      font-size: 0.9rem;
      margin-bottom: 20px;
    }

    .form-section a:hover {
      text-decoration: underline;
      color: #ffffff;
    }

    .form-section input {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      outline: none;
      font-size: 1rem;
      background-color: #dde6e9;
    }

    .form-section button {
      width: 90%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #28595E;
      color: white;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .form-section button:hover {
      background-color: #003b57;
    }

    .small-link {
      font-size: 0.8rem;
      color: #ff000000;
      position: relative;
      top: -10px;
    }

    .small-link span {
      text-decoration: underline;
      color: #ffffff;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo-section">
      <img src='/gambar/logogamerec_kotak.png' alt="GameRecce Logo">
    </div>
    <div class="form-section">
      <h2>Sign Up</h2>
      <form action="/User" method="post">
      <input type="hidden" name="action" value="register">
      
      <input type="text" name="username" placeholder="&#xf007; Username" style="font-family: Arial, FontAwesome;">
      <input type="password" name="password" placeholder="&#xf023; Password" style="font-family: Arial, FontAwesome;">
      <button>Sign Up</button>
      </form>
      <p class="small-link">Not admin yet? <span>Request Access</span></p>
      <p>Existing User? <a href="#">Log in</a></p>
    </div>
  </div>
</body>
</html>

