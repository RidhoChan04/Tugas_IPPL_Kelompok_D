/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import dao.GameDao;
import dao.UserDao;
import java.io.File;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Game;


/**
 *
 * @author acer
 */
@MultipartConfig
@WebServlet(name = "UserController", urlPatterns = {"/User"})
public class UserController extends HttpServlet{
    private UserDao userDao;
    private GameDao gameDao;
    private final String uploadDirectory = "C:/uploaded_images";
    
    public UserController(){
        userDao=new UserDao();
        gameDao=new GameDao();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String action=request.getParameter("action");
        
        if(action.equals("register")){
            handleRegister(request,response);
        }else if(action.equals("login")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            User user=userDao.selectUser(username, password);
            request.getSession().setAttribute("user", user);
            handleLogin(request,response);
        }else if (action.equals("logout")){
            HttpSession sesi = request.getSession();
            request.getSession().invalidate();
            response.sendRedirect("/views/login.jsp");
        }
        
        
    }
    
    protected void handleRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
       
       boolean cekValidasiUser=userDao.validUser(username);
       
       if(cekValidasiUser){
           request.setAttribute("errorMessage", "Username sudah digunakan");
           request.getRequestDispatcher("/views/register.jsp").forward(request, response);
       }else{
           userDao.insertUser(username,password);
           request.setAttribute(username, "username");
           request.getRequestDispatcher("/views/login.jsp").forward(request, response);
       }   
    }
    
    protected void handleLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
       boolean cekValidasiUser=userDao.validateUser(username, password);
       boolean cekValidasiAdmin=userDao.validateAdmin(username, password);
       if(cekValidasiUser){
           response.sendRedirect("/Game?action=home");
       }else if(cekValidasiAdmin){
           response.sendRedirect("/Game?action=admin");
       }else {
           request.setAttribute("errorMessage", "Username atau password salah.");
           request.getRequestDispatcher("/views/login.jsp").forward(request, response);
       }
        
        
    }
    
    
    
    
}

    

