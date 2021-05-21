package projet.Webstore.dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

public class DAOContext {
    
    protected static String dbURL;
    protected static String dbLogin;
    protected static String dbPassword;
    
    
    public static void init( ServletContext context ) {
        try {
            
            Class.forName( context.getInitParameter( "JDBC_DRIVER" ) );
            dbURL = context.getInitParameter( "JDBC_URL" );
            dbLogin = context.getInitParameter( "JDBC_LOGIN" );
            dbPassword = context.getInitParameter( "JDBC_PASSWORD" );
            
        } catch( Exception exception ) {
            
            exception.printStackTrace();
            
        }
    }
    
}