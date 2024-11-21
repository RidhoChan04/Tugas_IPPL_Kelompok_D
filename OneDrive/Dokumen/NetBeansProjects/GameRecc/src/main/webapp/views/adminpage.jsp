<%-- 
    Document   : adminpage
    Created on : 21 Nov 2024, 16.29.35
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Menu</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #002b40;
      color: white;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      overflow: hidden;
    }

    .container {
      text-align: center;
    }

    h1 {
      font-size: 2.5rem;
      font-weight: bold;
      color: white;
      margin-bottom: 30px;
    }

    .menu-buttons {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    .menu-buttons button {
      background-color: #28a745;
      color: white;
      font-size: 1rem;
      padding: 15px 30px;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
      width: 250px;
      margin: 0 auto;
    }

    .menu-buttons button:hover {
      background-color: #218838;
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Main Menu Admin</h1>
    <div class="menu-buttons">
      <button onclick="window.location.href='/views/menambahgame.jsp'">Menambah Game</button>
      <button onclick="window.location.href='/views/menghapusgame.jsp'">Menghapus Game</button>
      <button onclick="window.location.href='/Game?action=homeadmin'">Mengubah Data Game</button>
    </div>
  </div>
</body>
</html>

