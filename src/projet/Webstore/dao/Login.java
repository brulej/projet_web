package projet.Webstore.dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import projet.Webstore.dao.User;
import projet.Webstore.dao.DAOContext;
import projet.Webstore.dao.UserDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet(urlPatterns="/login", loadOnStartup=1) //on rajoute le paramètre loadOnStartup pour etre certain d'initialiser le contexte
public class Login extends HttpServlet {
    
    private static final long serialVersionUID = -4319076288258537575L;


    @Override
    public void init() throws ServletException {   //la servlet quand elle va demarrer elle va deùander a initialiser un DAOContext 
    												//grace a cette derniere on va pouvoir lire les paramètres qui sont dans web.xml
        DAOContext.init( this.getServletContext() );
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
        User connectedUser  = UserDAO.isValidLogin( login, password );
        /*if ( connectedUser != null ) {
            
            HttpSession session = request.getSession( true );
            session.setAttribute( "connectedUser", connectedUser );
            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        
        } else {
        
            request.setAttribute( "errorMessage", "Bad identity" );         
            request.getRequestDispatcher( "/login.jsp" ).forward( request, response );
            
        }*/
        
    }

}
