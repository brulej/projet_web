package projet.Webstore.dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ShoppingCartLine {

    private Article article;
    private int quantity;
    
    
    public ShoppingCartLine( Article article, int quantity ) {
        setArticle( article );
        setQuantity( quantity );
    }
    
    
    public Article getArticle() {
        return article;
    }
    
    public void setArticle(Article article) {
        if ( article == null ) throw new NullPointerException();
        this.article = article;
    }
    
    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
    public void increaseQuantity() {
        this.quantity++;
    }
    

}