<%-- 
    Document   : homepageadmin
    Created on : 22 Nov 2024, 01.18.34
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Game"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameRecce - Sorting Games</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #002b40;
      background-image: url('\gambar\Group_8.png'); 
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-position: center;
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      min-height: 100vh;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 90%;
      max-width: 1200px;
      padding: 20px 0;
      border-bottom: 2px solid #749aa8;
    }

    .header .logo {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .header h2 {
      font-size: 1.8rem;
      font-weight: bold;
      color: #8bc8bd;
      margin: 0;
    }

    /* Search button container */
    .search-container {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .search {
      background-color: #ffffff00;
      width: 50px;
      height: 45px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
    }

    .search img {
      width: 45px;
      height: 45px;
    }

    /* Search input (initially hidden) */
    .search-input {
      display: none;
      width: 0;
      padding: 0;
      border: none;
      background-color: transparent;
      color: white;
      font-size: 16px;
      transition: width 0.4s ease;
      outline: none;
    }

    /* Display search input when search button is clicked */
    .search-container.active .search-input {
      display: inline-block;
      width: 200px;
      border-bottom: 2px solid #8bc8bd;
    }

    .main-content {
      width: 90%;
      max-width: 1200px;
      margin-top: 30px;
      flex-grow: 1;
    }

    .sort-button {
      background-color: #28a745;
      color: white;
      padding: 12px 25px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 1rem;
      font-weight: bold;
      transition: background-color 0.3s ease, transform 0.2s ease;
      display: inline-block;
      margin-bottom: 20px;
    }

    .sort-button:hover {
      background-color: #218838;
      transform: translateY(-2px);
    }

    .game-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 20px;
    }

    .game-card {
      background-color: #1c3b4d;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      text-align: center;
    }

    .game-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
    }

    .game-card img {
      width: 100%;
      height: 160px;
      object-fit: cover;
    }

    .game-card-title {
      padding: 15px;
      font-size: 1.1rem;
      font-weight: bold;
      color: white;
    }

    footer {
      margin-top: 20px;
      padding: 10px;
      text-align: center;
      background-color: #00334d;
      width: 100%;
      color: white;
      font-size: 0.9rem;
      border-top: 2px solid #749aa8;
    }

    footer a {
      color: #8bc8bd;
      text-decoration: none;
    }

    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
    <%  List<Game>games=(List<Game>)request.getSession().getAttribute("games");   %>
  <div class="header">
    <div class="logo">
      <img src="/gambar/logo_gamerec.png" alt="GameRecce Logo">
      <h2>GameRecce</h2>
    </div>
    <div class="search">
      <img src="/gambar/search.png" alt="Search Icon">
    </div>
  </div>
  <div class="main-content">
    <button class="sort-button">Sorting Game</button>
    <button onclick="window.location.href='/views/adminpage.jsp'">Home</button>
    <div class="game-grid">
         <% if (!games.isEmpty()) { %>
    <% for (Game game : games) { %>
    <a href="/Game?action=DisplayGameEdit&id=<%=game.getGameID()%>" >  
    <div class="game-card">
          <img src="${pageContext.request.contextPath}/<%= game.getPosterGame() %>" alt="Game Image">
          <div class="game-card-title"><%=game.getName()%></div>
      </div>
    </a>
    <% } %>
<% } else { %>
    <p>No games available to display.</p>
<% } %>
      
      
 
    </div>
  </div>
  <footer>
    &copy; 2024 GameRecce. All rights reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
  </footer>
</body>
</html>
