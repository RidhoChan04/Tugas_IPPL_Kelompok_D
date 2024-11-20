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
      width: 90%;
      max-width: 1200px;
      height: 450px;
      border-radius: 15px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px;
    }

    .logo-section {
      background-color: #003b57;
      width: 45%;
      height: 90%;
      border-radius: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .logo-section img {
      width: 150px;
      height: auto;
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
    }

    .form-section h2 {
      font-size: 2.5rem;
      color: #000000;
      margin-bottom: 10px;
    }

    .form-section p {
      color: #666;
      font-size: 1rem;
      margin-bottom: 20px;
    }

    .form-section a {
      color: #0056b3;
      text-decoration: none;
      font-size: 0.9rem;
      margin-bottom: 20px;
    }

    .form-section a:hover {
      text-decoration: underline;
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
      background-color: #0056b3;
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
      color: #003b57;
    }

    .small-link span {
      text-decoration: underline;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo-section">
      <img src="https://via.placeholder.com/150" alt="GameRecce Logo">
    </div>
    <div class="form-section">
      <h2>Sign Up</h2>
      <p>Existing User? <a href="#">Log in</a></p>
      <input type="text" placeholder="&#xf007; Username" style="font-family: Arial, FontAwesome;">
      <input type="password" placeholder="&#xf023; Password" style="font-family: Arial, FontAwesome;">
      <button>Sign Up</button>
      <p class="small-link">Not admin yet? <span>Request Access</span></p>
    </div>
  </div>
</body>
</html>

