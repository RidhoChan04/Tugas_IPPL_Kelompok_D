<%-- 
    Document   : Review
    Created on : 21 Nov 2024, 16.19.33
    Author     : Victus
--%>

<%@page import="model.User"%>
<%@page import="model.review"%>
<%@page import="java.util.List"%>
<%@page import="model.Game"%>
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
            position: relative;
        }
        .gambar-latar {
            position: fixed; /* Membuat gambar tetap saat di-scroll */
            top: 0;
            left: 0;
            width: 100%; /* Membuat gambar memenuhi layar */
            height: 100%; /* Membuat gambar memenuhi layar */
            background-image: url('/gambar/Group_8.png');
            background-size: cover; /* Mengatur gambar agar menutupi seluruh area */
            background-position: center; /* Posisikan gambar di tengah */
            z-index: -1; /* Menempatkan gambar di belakang konten */
            opacity: 0.7; /* Membuat gambar agak transparan agar tidak terlalu dominan */
        }

        .content {
            position: relative; /* Memastikan konten berada di atas gambar */
            z-index: 1; /* Memastikan konten di atas gambar */
            padding: 20px;
            text-align: center;
        }

    .container {
      width: 90%;
      max-width: 1200px;
      background-color: #e0e0e000;
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
      color: white;
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
    <% Game game=(Game) request.getSession().getAttribute("singleGame"); 
       List<review>reviews=game.getReviews();
       User user= (User) request.getSession().getAttribute("user");
    
    
    %>
  <div class="container">
    <div class="header">
      <img src="${pageContext.request.contextPath}/<%= game.getPosterGame() %>" alt="<%=game.getName() %>">
      <div class="header-content">
          <h1><%=game.getName() %></h1>
        <div class="rating">
            <span><%=game.getRating() %>   </span>
          <span>&#9733;</span>
        </div>
        <div class="details">
          <p>Nama: <%=game.getName() %></p>
          <p>Genre:<%=game.getGenre() %></p>
          <p>Device: <%= game.getDevice() %></p>
          <p>Harga:Rp <%= game.getPrice() %></p>
          <p>Rilis: <%= game.getDate() %></p>
        </div>
      </div>
    </div>
    <div class="description">
     <%= game.getDeskripsi() %>
    </div>
    <div class="reviews">
      <h2>Reviews</h2>
       <div class="review-list">
        <%if(reviews!=null){%>
           <%for(review review:reviews){ %>
        <div class="review-item"><%=review.getKomen() %> Rating<%=review.getRating() %></div>
        
       <%}%>
       </div>
       <%}else{%>
       <p>There is no review </p> 
       <%}%>
    </div>
    <div class="review-input">
      <div class="rating-input">
       
      </div>
        <form action="/Game" method="post">
       <input type="hidden" name="action" value="addReview">
       <input type="hidden" name="idGame" value="<%= game.getGameID()%>">
       <input type="hidden" name="idUser" value="<%= user.getUserID() %>">
       <textarea name="review" placeholder="Masukkan Review.." rows="4"></textarea>
       <input type="number" name="rating" min="0" max="5" step="0.1" placeholder="Rating (0-5)" required>
       <button>Submit Review</button>
        </form>
    </div>
  </div>
  <div class="gambar-latar"></div>
</body>
</html>

