package projet.Webstore.dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDAO extends DAOContext {

    public static User isValidLogin( String login, String password ) {
    	  System.out.println("connection");
          System.out.println(dbURL);

          setconnexion();
          System.out.println(dbURL);

        try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ) {
        	System.out.println(connection);
            System.out.println(dbURL);
           // String strSql = "SELECT * FROM T_Users WHERE login='" 
                            //+ login + "' AND password='" + password + "'";
           String strSql = "SELECT * FROM T_Users WHERE login=? AND password=?";
            System.out.println(strSql + login + password);
          
            try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
                statement.setString( 1, login );
                statement.setString( 2, password );
                try ( ResultSet resultSet = statement.executeQuery() ) {
                    if ( resultSet.next() ) {
                        return new User(
                                resultSet.getInt( "idUser" ),
                                resultSet.getString( "login" ),
                                resultSet.getString( "password" ),
                                resultSet.getInt( "connectionNumber" )
                        );
                    } else {
                        return null;
                    }
                }
            }
        } catch (SQLException ex ) {
        	throw new RuntimeException( ex );
        	
        	//System.out.println("SQLException: " + ex.getMessage()); System.out.println("SQLState: " + ex.getSQLState()); System.out.println("VendorError: " + ex.getErrorCode());            
        }
    }
    
}


