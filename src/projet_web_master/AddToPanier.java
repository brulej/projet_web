package projet_web_master;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Cookie;

import projet.Webstore.dao.CatalogBrowser;

/**
 * Servlet implementation class AddToPanier
 */
@WebServlet("/AddToPanier")
public class AddToPanier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToPanier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession( true );
        if ( session.getAttribute( "connectedUser" ) == null ) {
            response.sendRedirect( "login" );
            return;
        }
        
        String article = request.getParameter( "article");
        String prix = request.getParameter( "prix");
        /*
        DateFormat format = new SimpleDateFormat("yyyyMMdd_HHmmss");
        Date date = new Date();
        String dateDujour =format.format(date);
        String nomCokie = "article-"+dateDujour;*/
        String nomCokie = "article--"+article;
        String valeurCookie = article+"-"+prix;
        
        Cookie cookie = new Cookie(URLEncoder.encode( nomCokie, "UTF-8" ), URLEncoder.encode( valeurCookie, "UTF-8" ));
        System.out.println("valeur du cookie : " +cookie.getValue());
        cookie.setMaxAge(60 * 5);// 5minutes
        response.addCookie(cookie);
        
        this.getServletContext().getRequestDispatcher("/articles.jsp").forward(request, response);

	}

}
