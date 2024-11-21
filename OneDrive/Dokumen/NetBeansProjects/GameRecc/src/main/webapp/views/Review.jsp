<%-- 
    Document   : Review
    Created on : 21 Nov 2024, 16.19.33
    Author     : Victus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Game Review - Harvest Moon</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #002b40;
      color: white;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      min-height: 100vh;
    }

    .container {
      width: 90%;
      max-width: 1200px;
      background-color: #e0e0e0;
      border-radius: 15px;
      padding: 20px;
      margin: 20px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    .header {
      display: flex;
      align-items: flex-start;
      gap: 20px;
    }

    .header img {
      width: 150px;
      border-radius: 10px;
    }

    .header-content {
      flex-grow: 1;
    }

    .header h1 {
      margin: 0;
      color: #ffffff;
      font-size: 2rem;
      margin-bottom: 10px;
    }

    .header .rating {
      display: flex;
      align-items: center;
      gap: 5px;
      font-size: 1.5rem;
      color: #ffd700;
    }

    .header .details {
      background-color: #749aa8;
      padding: 10px;
      border-radius: 10px;
      color: white;
      font-size: 0.9rem;
      margin-top: 10px;
      line-height: 1.5;
    }

    .description {
      margin-top: 20px;
      background-color: #749aa8;
      color: white;
      border-radius: 10px;
      padding: 20px;
      font-size: 1rem;
      line-height: 1.5;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    }

    .reviews {
      margin-top: 20px;
    }

    .reviews h2 {
      margin: 0;
      color: white;
      font-size: 1.5rem;
      margin-bottom: 10px;
    }

    .review-list {
      margin-top: 10px;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .review-item {
      background-color: #1c3b4d;
      border-radius: 10px;
      padding: 10px;
      font-size: 0.9rem;
      color: white;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .review-input {
      margin-top: 20px;
    }

    .review-input input,
    .review-input textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: none;
      border-radius: 5px;
      outline: none;
      font-size: 1rem;
      background-color: #dde6e9;
    }

    .review-input button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #28a745;
      color: white;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .review-input button:hover {
      background-color: #218838;
    }

    .rating-input {
      display: flex;
      justify-content: center;
      gap: 5px;
      margin-bottom: 15px;
    }

    .rating-input span {
      font-size: 1.5rem;
      color: #ffd700;
      cursor: pointer;
    }

    .rating-input span:hover,
    .rating-input span.active {
      color: #ffcc00;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="https://via.placeholder.com/150" alt="Harvest Moon">
      <div class="header-content">
        <h1>Harvest Moon</h1>
        <div class="rating">
          <span>4.9</span>
          <span>&#9733;</span>
        </div>
        <div class="details">
          <p>Nama: Harvest Moon</p>
          <p>Genre: Adventure, RPG</p>
          <p>Device: PC</p>
          <p>Harga: Rp. 175,000</p>
          <p>Rilis: 31 Oktober 2004</p>
        </div>
      </div>
    </div>
    <div class="description">
      Jelajahi dunia Anthos yang luas dengan bantuan teman penemu aneh Anda, Doc Jr. dan banyak lainnya! Terserah
      padamu untuk menghidupkan kembali Harvest Goddess dan Harvest Sprite, serta menghubungkan kembali seluruh desa
      Anthos satu sama lain!
    </div>
    <div class="reviews">
      <h2>Reviews</h2>
      <div class="review-list">
        <div class="review-item">Cute animals and characters. Story is nice but animal and child caring could be better. Wish days were longer. Overall, very amusing game.</div>
        <div class="review-item">Amazing farming mechanics and nostalgic gameplay. Love the graphics and storytelling!</div>
      </div>
    </div>
    <div class="review-input">
      <div class="rating-input">
        <span>&#9733;</span>
        <span>&#9733;</span>
        <span>&#9733;</span>
        <span>&#9733;</span>
        <span>&#9733;</span>
      </div>
      <textarea placeholder="Masukkan Review.." rows="4"></textarea>
      <button>Submit Review</button>
    </div>
  </div>
</body>
</html>

