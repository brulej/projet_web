package projet.Webstore.dao;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import projet.Webstore.dao.User;
import projet.Webstore.dao.DAOContext;
import projet.Webstore.dao.UserDAO;
import projet.Webstore.dao.ArticleDAO;
import projet.Webstore.dao.CatalogBrowser;


import javax.servlet.ServletContext;
import javax.servlet.GenericServlet;

/**
 * Servlet implementation class Login
 */
@WebServlet(urlPatterns="/login", loadOnStartup=1) //on rajoute le paramètre loadOnStartup pour etre certain d'initialiser le contexte
public class Login extends HttpServlet {
    
    private static final long serialVersionUID = -4319076288258537575L;


    @Override
    public void init() throws ServletException {   //la servlet quand elle va demarrer elle va deùander a initialiser un DAOContext 
    												//grace a cette derniere on va pouvoir lire les paramètres qui sont dans web.xml
       // DAOContext.init( this.getServletContext() );
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
              throws ServletException, IOException {
        request.setAttribute( "login", "" );
        request.setAttribute( "password", "" );
        request.setAttribute( "errorMessage", "" );
        request.getRequestDispatcher( "/signin.jsp" ).forward( request, response );
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
              throws ServletException, IOException {
        String login = request.getParameter( "txtLogin" );
        String password = request.getParameter( "txtPassword" );
        
        request.setAttribute( "login", login );
        request.setAttribute( "password", password );
        
        System.out.println( login + " password " + password);
        
        /*peut  eventuelement repasser à un mode static 
        *si on repasse les fonctions DAOContext.setconnexio et UserDao.isValidLogin en static
        *User connectedUser  = UserDAO.isValidLogin( login, password );
        */  
        
        UserDAO dao = new UserDAO();
        dao.setContext(getServletContext());
 
        User connectedUser  = dao.isValidLogin( login, password );
        
        CatalogBrowser cata =new CatalogBrowser();
        double prix = cata.getArticles().get(0).getUnitaryPrice();
        
        //System.out.println("print"+cata.articleCount);
        System.out.println("print"+ prix);
        if ( connectedUser != null ) {
            
            HttpSession session = request.getSession( true );
            session.setAttribute( "connectedUser", connectedUser );
            session.setAttribute( "catalogBrowser", new CatalogBrowser() );
            session.setAttribute( "cataCount", cata.articleCount );
            //request.getRequestDispatcher( "/viewArticle.jsp" ).forward( request, response );
            request.getRequestDispatcher( "/articles.jsp" ).forward( request, response );
        
        } else {
        
            request.setAttribute( "errorMessage", "Bad identity" );         
            request.getRequestDispatcher( "/signin.jsp" ).forward( request, response );
            
        }
        
    }

}
