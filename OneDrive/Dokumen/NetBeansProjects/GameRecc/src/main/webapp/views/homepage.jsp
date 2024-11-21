<%-- 
    Document   : homepage
    Created on : 20 Nov 2024, 20.17.47
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 90%;
      max-width: 1200px;
      margin-top: 20px;
    }

    .header .logo {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .header .logo img {
      width: 50px;
      height: 50px;
    }

    .header .search {
      background-color: #0056b3;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
    }

    .header .search img {
      width: 20px;
      height: 20px;
    }

    .main-content {
      width: 90%;
      max-width: 1200px;
      margin-top: 20px;
    }

    .sort-button {
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 1rem;
      margin-bottom: 20px;
      transition: background-color 0.3s ease;
    }

    .sort-button:hover {
      background-color: #218838;
    }

    .game-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 20px;
    }

    .game-card {
      background-color: #1c3b4d;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .game-card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
    }

    .game-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
    }

    .game-card-title {
      padding: 10px;
      text-align: center;
      font-size: 1rem;
      color: white;
    }
  </style>
</head>
<body>
  <div class="header">
    <div class="logo">
      <img src="https://via.placeholder.com/50" alt="GameRecce Logo">
      <h2>GameRecce</h2>
    </div>
    <div class="search">
      <img src="https://via.placeholder.com/20" alt="Search Icon">
    </div>
  </div>
  <div class="main-content">
    <button class="sort-button">Sorting Game</button>
    <div class="game-grid">
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">Black Myth: Wukong</div>
      </div>
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">Harvest Moon</div>
      </div>
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">Counter-Strike</div>
      </div>
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">NBA 2K25</div>
      </div>
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">Dragon Ball</div>
      </div>
      <div class="game-card">
        <img src="https://via.placeholder.com/200x150" alt="Game Image">
        <div class="game-card-title">MechWarrior</div>
      </div>
    </div>
  </div>
</body>
</html>
