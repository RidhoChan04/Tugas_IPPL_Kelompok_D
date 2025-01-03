///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
// */
//
//import controller.UserController;
//import dao.UserDao;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import static org.junit.jupiter.api.Assertions.assertFalse;
//import static org.junit.jupiter.api.Assertions.assertTrue;
//
//
//public class TestLogin {
//
//    private UserController userController;
//    private UserDao userDao;
//    private HttpServletRequest request;
//    private HttpServletResponse response;
//    private HttpSession session;
//
//    @BeforeEach
//    public void setUp() {
//        userDao = new UserDao();
//    }
//
//     @Test
//    public void testRegister() {
//        // Register a new user
//        boolean result = userDao.insertUser("ala", "123");
//        assertTrue(result, "New user should be registered successfully");
//        
//          result = userDao.insertUser("ali", "123");
//        assertTrue(result, "New user should be registered successfully");
//        
//          result = userDao.insertUser("alu", "123");
//        assertTrue(result, "New user should be registered successfully");
//        
//        result = userDao.insertUser("ale", "123");
//        assertTrue(result, "New user should be registered successfully");
//
//        // Try to register the same user again
//        boolean duplicateResult = userDao.insertUser("asep", "123");
//        assertFalse(duplicateResult, "Duplicate username should not be allowed");
//        
//          duplicateResult = userDao.insertUser("haikal", "123");
//        assertFalse(duplicateResult, "Duplicate username should not be allowed");
//        
//          duplicateResult = userDao.insertUser("haikal123", "123");
//        assertFalse(duplicateResult, "Duplicate username should not be allowed");
//        
//          duplicateResult = userDao.insertUser("kocak", "123");
//        assertFalse(duplicateResult, "Duplicate username should not be allowed");
//    }
//
//    @Test
//    public void testLogin() {
//        // Valid login
//        boolean isValid = userDao.validateUser("asep", "123");
//        assertTrue(isValid, "Login should succeed for valid credentials");
//        
//        isValid = userDao.validateUser("haikal", "123");
//        assertTrue(isValid, "Login should succeed for valid credentials");
//        
//        isValid = userDao.validateUser("wisnu", "123");
//        assertTrue(isValid, "Login should succeed for valid credentials");
//        
//        isValid = userDao.validateUser("wasnu", "123");
//        assertTrue(isValid, "Login should succeed for valid credentials");
//        
//        isValid = userDao.validateUser("wusnu", "123");
//        assertTrue(isValid, "Login should succeed for valid credentials");
//
//        // Invalid login
//        boolean isInvalid = userDao.validateUser("aseps1", "wrongPassword");
//        assertFalse(isInvalid, "Login should fail for invalid credentials");
//        
//        isInvalid = userDao.validateUser("haikals1", "wrongPassword");
//        assertFalse(isInvalid, "Login should fail for invalid credentials");
//        
//        isInvalid = userDao.validateUser("budis1", "wrongPassword");
//        assertFalse(isInvalid, "Login should fail for invalid credentials");
//        
//        isInvalid = userDao.validateUser("winus1", "wrongPassword");
//        assertFalse(isInvalid, "Login should fail for invalid credentials");
//        
//        isInvalid = userDao.validateUser("udin1", "wrongPassword");
//        assertFalse(isInvalid, "Login should fail for invalid credentials");
//    }
//}
