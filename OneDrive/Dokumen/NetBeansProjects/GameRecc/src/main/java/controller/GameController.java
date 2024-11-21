/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import dao.GameDao;
import dao.ReviewDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import model.Game;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.review;
import model.User;

/**
 *
 * @author acer
 */
@WebServlet(name = "GameController", urlPatterns = {"/Game"})
@MultipartConfig 
public class GameController  extends HttpServlet{
    private final GameDao gameDao = new GameDao();
    private final ReviewDao ReviewDao = new ReviewDao();
    private final UserDao userDao = new UserDao();
    private final String uploadDirectory = "C:/uploaded_images"; // Change to your preferred upload directory

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Game>games=gameDao.getAllGame();
            request.getSession().setAttribute("games", games);
           
            
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String action = request.getParameter("action");
        
        if(action.equals("displayGame")){
            response.sendRedirect("/views/homepage.jsp");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    
    
    
    
    
    
   
    
}
