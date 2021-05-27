package projet.Webstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class MessageDAO extends DAOContext{

    public  void sendMessage( String  Nom,String  mail , String  tel , String  images , String  mess) {
    	setconnexion();
		try(Connection connection = DriverManager.getConnection(dbURL, dbLogin, dbPassword )){
			String strSQLInsert = "insert into t_message (Nom, mail, tel, images, mess) values ('" + Nom + " ', '" + mail + " ', '"+  tel + " ', '" + images + " ', '" + mess+"')";
			try(Statement state = connection.createStatement()){
				state.executeUpdate(strSQLInsert);
			}
		} catch (SQLException e) {
			throw new IllegalStateException(e);
		}
	}
    	
    	
    	
    	
    	
}
