<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameRecc</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #002b40;
      color: white;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      height: 100%;
    }
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 30px;
      background-color: #00334d;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      height: auto;
      color: white;
    }
    .header .logo {
      display: flex;
      align-items: center;
      gap: 15px;
    }
    .header .logo img {
      height: 50px;
      width: auto;
    }
    .header h2 {
      font-size: 1.8rem;
      font-weight: bold;
      color: #8bc8bd;
    }
    .header form {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 0;
    }
    .header input[type="text"] {
      border-radius: 10px;
      padding: 5px 15px;
      border: 1px solid #749aa8;
      background-color: #002b40;
      color: white;
    }
    .header input[type="text"]::placeholder {
      color: #8bc8bd;
    }
    .header .btn {
      border-radius: 10px;
      padding: 5px 15px;
      background-color: #8bc8bd;
      color: #00334d;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }
    .header .btn:hover {
      background-color: #6fa89c;
      color: white;
    }
    /* Dropdown Menu */
    .navbar-dropdown {
      position: relative;
      display: inline-block;
    }
    .navbar-dropdown-content {
      display: none;
      position: absolute;
      background-color: #004760;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      min-width: 200px;
      z-index: 1;
      border-radius: 10px;
    }
    .navbar-dropdown-content a {
      color: white;
      padding: 10px 20px;
      display: block;
      text-decoration: none;
      transition: background-color 0.2s;
    }
    .navbar-dropdown-content a:hover {
      background-color: #005c73;
    }
    .navbar-dropdown:hover .navbar-dropdown-content {
      display: block;
    }
    /* Sorting Dropdown */
    .sorting-dropdown {
      position: relative;
      display: inline-block;
      margin-left: 20px;
    }
    .sorting-dropdown-content {
      display: none;
      position: absolute;
      background-color: #004760;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      min-width: 200px;
      z-index: 1;
      border-radius: 10px;
    }
    .sorting-dropdown-content a {
      color: white;
      padding: 10px 20px;
      display: block;
      text-decoration: none;
      transition: background-color 0.2s;
    }
    .sorting-dropdown-content a:hover {
      background-color: #005c73;
    }
    .sorting-dropdown:hover .sorting-dropdown-content {
      display: block;
    }
    /* Profile Icon */
    .profile-icon {
      display: flex;
      align-items: center;
      gap: 10px;
      cursor: pointer;
    }
    .profile-icon img {
      height: 40px;
      width: 40px;
      border-radius: 50%;
      object-fit: cover;
    }
    .profile-icon span {
      color: #8bc8bd;
      font-weight: bold;
    }
    .header .btn-danger {
      border-color: #8bc8bd;
      border-radius: 10px;
      padding: 5px 15px;
      font-weight: bold;
      margin-left: 10px;
    }
    .header .btn-danger:hover {
      border-color: #c82333;
      background-color: #c82333;
      color: white;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="logo">
    <img src="/gambar/logo_gamerec.png" alt="GameRecce Logo">
    <h2>GameRecc</h2>
  </div>

  <form action="/Game" method="get" class="d-flex">
    <input type="hidden" name="action" value="searchGame">
    <input type="text" name="query" class="form-control" placeholder="Search games...">
    <button type="submit" class="btn">Search</button>
  </form>

  <div class="navbar-dropdown">
    <button class="btn btn-outline-light">Categories</button>
    <div class="navbar-dropdown-content">
      <a href="/Game?action=Action">Action</a>
      <a href="/Game?action=Adventure">Adventure</a>
      <a href="/Game?action=RPG">RPG</a>
      <a href="/Game?action=Strategy">Strategy</a>
      <a href="/Game?action=Sports">Sports</a>
    </div>
  </div>

  <div class="sorting-dropdown">
    <button class="btn btn-outline-light">Sort</button>
    <div class="sorting-dropdown-content">
      <a href="/Game?action=sortAZ">A-Z</a>
      <a href="/Game?action=sortZA">Z-A</a>
      <a href="/Game?action=sortTOP">Top Rated</a>
    </div>
  </div>

  <div class="profile-icon">
    <img src="/gambar/profile_user.png" alt="User Profile">
    <span>User</span>
    <form action="/User" method="post" class="d-flex">
    <input type="hidden" name="action" value="logout">
    <button type="submit" class="btn btn-danger btn-sm">Logout</button>
    </form>
  </div>
</div>
    


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
