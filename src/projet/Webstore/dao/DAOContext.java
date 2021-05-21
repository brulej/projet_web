package projet.Webstore.dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

public class DAOContext {
    
    protected static String dbURL= "toto";
    protected static String dbLogin;
    protected static String dbPassword;
    
    
    public static void setconnexion() {
    	System.out.println("init");
        try {
            
            Class.forName( "com.mysql.jdbc.Driver" ) ;
            dbURL = "jdbc:mysql://localhost:3306/webstore" ;
            dbLogin =  "root" ;
            dbPassword =  "" ;
            
        } catch( Exception exception ) {
           System.out.println("je suis ici");  
            exception.printStackTrace();
            
        }
    }
    
}