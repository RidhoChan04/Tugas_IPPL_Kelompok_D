/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import model.Game;
import java.sql.*;
import java.util.stream.Collectors;

/**
 *
 * @author acer
 */
public class GameDao {
   
    public GameDao(){};
    
    private final String url = "jdbc:mysql://localhost:3306/mydb";
    private final String dbUser = "root";
    private final String dbPassword = "@Faizhkl06";

    // Method to add a new movie
    public boolean addMovie(String name,String genre,String device,double Price,int age,double rating,java.util.Date Date,String PosterGame) throws SQLException {
        String sql = "INSERT INTO game (Name, Genre , Device ,Price ,Age,Rating,Date,PosterGame) VALUES (?,?,?,?,?,?,?,?)";
         try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            
            
            stmt.setString(1, name);
            stmt.setString(2, genre);
            stmt.setString(3, device);
            stmt.setDouble(4, Price);
            stmt.setInt(5, age);
            stmt.setDouble(6, rating);
            java.sql.Date releaseDateSql = new java.sql.Date(Date.getTime()); // Convert to java.sql.Date
            stmt.setDate(7, releaseDateSql);
            stmt.setString(8, PosterGame);
            
            
            

            return stmt.executeUpdate() > 0; 
        }
    }

    
    
    
    
    
    public boolean updateMovie(int GameID,String name,String genre,String device,double Price,int age,double rating,java.util.Date Date,String PosterGame) throws SQLException {
        String sql = "UPDATE game SET Name=?, Genre=?, Device =?,Price =? ,Age=?,Rating=?,Date=?,PosterGame=? WHERE movieID = ?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, name);
            stmt.setString(2, genre);
            stmt.setString(3, device);
            stmt.setDouble(4, Price);
            stmt.setInt(5, age);
            stmt.setDouble(6, rating);
            java.sql.Date releaseDateSql = new java.sql.Date(Date.getTime()); // Convert to java.sql.Date
            stmt.setDate(7, releaseDateSql);
            stmt.setString(8, PosterGame);

            return stmt.executeUpdate() > 0; // Returns true if update was successful
        }
    }

    // Method to delete a movie by ID
    public boolean deleteMovie(String name,String genre) throws SQLException {
        String sql = "DELETE FROM game WHERE Name=? and Genre=?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, name);
            stmt.setString(2, genre);

            return stmt.executeUpdate() > 0; // Returns true if deletion was successful
        }
    }

    // Method to retrieve a movie by ID
    public Game getGameById(int GameID) throws SQLException {
        String sql = "SELECT * FROM game WHERE GameID = ?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, GameID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                
               
                 
                String Name=rs.getString("Name");
                String Genre=rs.getString("genre");
                String Device = rs.getString("Device");
                Double Price = rs.getDouble("Price");
                int Age=rs.getInt("Age");
                Date Date=rs.getDate("Date");
                String PosterGame=rs.getString("PosterGame");
                return (new Game(GameID,Name, Genre,Device, Price,PosterGame, Date,Age));
            }
        }
        return null; // Returns null if no movie is found with the given ID
    }

    // Method to retrieve all movies
    public List<Game> getAllGame() throws SQLException {
        List<Game> game = new ArrayList<>();
        String sql = "SELECT * FROM game";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                int GameID = rs.getInt("GameID");
                 
                String Name=rs.getString("Name");
                String Genre=rs.getString("genre");
                String Device = rs.getString("Device");
                Double Price = rs.getDouble("Price");
                int Age=rs.getInt("Age");
                Date Date=rs.getDate("Date");
                String PosterGame=rs.getString("PosterGame");
                game.add(new Game(GameID,Name, Genre,Device, Price,PosterGame, Date,Age));
                
            }
        }
        return game;
    }
    
    public List<Game> searchGameByTitle(String title) {
    List<Game> game = new ArrayList<>();
    String sql = "SELECT * FROM movies WHERE title LIKE ?";

    try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        
        stmt.setString(1, "%" + title + "%"); // Use % for partial matching
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            int GameID = rs.getInt("movieID");
                 
                String Name=rs.getString("Name");
                String Genre=rs.getString("genre");
                String Device = rs.getString("Device");
                Double Price = rs.getDouble("Price");
                int Age=rs.getInt("Age");
                Date Date=rs.getDate("Date");
                String PosterGame=rs.getString("PosterGame");
                
                

                game.add(new Game(GameID,Name, Genre,Device, Price,PosterGame, Date,Age));
            
            
            
       }
    } catch (SQLException e) {
        e.printStackTrace();
    }
      
      if(title.isEmpty()){
          return null;
      }

     return game;
    }

    
    

    
}
