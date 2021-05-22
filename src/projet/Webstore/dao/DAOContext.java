package projet.Webstore.dao;

import java.io.FileInputStream;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class DAOContext  {
    
    protected static String dbURL= "toto";
    protected static String dbLogin;
    protected static String dbPassword;
    
    
    public static void setconnexion() {
    	System.out.println("init");
    	
    	Properties props = new Properties();
		try (FileInputStream fis = new FileInputStream("C:\\web\\projet_web\\src\\projet\\Webstore\\dao\\config.properties")){
			props.load(fis);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
        try { 
            Class.forName( props.getProperty("jdbc.driver.class" )) ;
            dbURL = props.getProperty("jdbc.url") ;
            dbLogin =  props.getProperty("jdbc.login");
            dbPassword =  props.getProperty("jdbc.password") ;
            
        } catch( Exception exception ) {
           System.out.println("je suis ici");  
            exception.printStackTrace();
            
        }
    }
    
}