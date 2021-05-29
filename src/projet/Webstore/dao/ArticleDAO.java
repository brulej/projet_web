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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ArticleDAO extends DAOContext {
	
    public static List<Article> getAll( ) {
    	Article article ;
    	List<Article> articles= new ArrayList<>();
        try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){
            String strSql = "SELECT * FROM T_Articles ";
            try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
                try ( ResultSet resultSet = statement.executeQuery() ) {
                	while(resultSet.next()){ 
                		article = new Article(
                                resultSet.getInt( "idArticle" ),
                                resultSet.getString( "description" ),
                                resultSet.getString( "brand" ),
                                resultSet.getDouble( "unitaryPrice" ),
                				resultSet.getString( "photo" ));
                		
                		articles.add(article);
                		
                		} 
                    return articles;
                }
            }
            
        } catch ( Exception exception ) {
            
            throw new RuntimeException( exception );
            
        }
    }
	
    public static int getArticleCount() {
        try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){

            String strSql = "SELECT count(idArticle) FROM T_Articles";
            try ( Statement statement  = connection.createStatement() ) {
                try ( ResultSet resultSet = statement.executeQuery( strSql ) ) {
                    resultSet.next();
                    System.out.println(resultSet.getInt( 1 ));
                    return resultSet.getInt( 1 );
                }
            }
            
        } catch ( Exception exception ) {
            
            throw new RuntimeException( exception );
            
        }
    }
    
    public static Article getArticleById( int idArticle ) {
        try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){
            System.out.println( "connection to the database" );
            String strSql = "SELECT * FROM T_Articles WHERE idArticle=?";
            try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
                statement.setInt( 1, idArticle );
                try ( ResultSet resultSet = statement.executeQuery() ) {
                    resultSet.next();
                    return new Article(
                            resultSet.getInt( "idArticle" ),
                            resultSet.getString( "description" ),
                            resultSet.getString( "brand" ),
                            resultSet.getDouble( "unitaryPrice" ),
                            resultSet.getString( "photo" )
                    );
                }
            }
            
        } catch ( Exception exception ) {
            
            throw new RuntimeException( exception );
            
        }
    }
    
    
    public static void updateArticle( Article article ) {
        try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){

            String strSql = "UPDATE T_Articles SET description=?, brand=?, unitaryPrice=? WHERE idArticle=?";
            try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
                statement.setString( 1, article.getDescription() );
                statement.setString( 2, article.getBrand() );
                statement.setDouble( 3, article.getUnitaryPrice() );
                statement.setInt( 4, article.getIdArticle() );
                statement.executeUpdate();
            }
            
        } catch ( Exception exception ) {
            
            throw new RuntimeException( exception );
            
        }
    }
    
}