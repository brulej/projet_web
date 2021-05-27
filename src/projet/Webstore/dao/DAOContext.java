package projet.Webstore.dao;

import java.io.File;
import java.io.FileInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

import java.io.FileNotFoundException;

import javax.servlet.GenericServlet;

public class DAOContext  {
    
    protected static String dbURL= "toto";
    protected static String dbLogin;
    protected static String dbPassword;
    protected static ServletContext context;
    
    public void setContext (ServletContext servletcontext) {
    	this.context=servletcontext;
    }
    
    public  void setconnexion() {
    	
    	Properties props = new Properties();

    	/* DEBUG
    	System.out.println(new File("").getAbsolutePath());
    	System.out.println(context.getContextPath());
    	*/

		try (InputStream fstream = context.getResourceAsStream("WEB-INF/config.properties")){
			props.load(fstream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		/* METHODES OBSOLETES
    	System.out.println("3");
		try (InputStream fstream = this.getClass().getClassLoader().getResourceAsStream("config.properties")){
			props.load(fstream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		try (FileInputStream fis = new FileInputStream("C:\\Users\\jer91\\OneDrive\\Bureau\\projet_web\\src\\projet\\Webstore\\dao\\config.properties")){

			props.load(fis);
		} catch (IOException e) {
			e.printStackTrace();
		} */
		
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