package projet_web_master;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import java.util.ArrayList;
import java.util.List;

import projet.Webstore.dao.ArticleDAO;
import projet.Webstore.dao.Article;



/**
 * Servlet implementation class GotoPanier
 */
@WebServlet("/GotoPanier")
public class GotoPanier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GotoPanier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        List<Article> cookiesSelec = new ArrayList();
        Article article;
        
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().startsWith("article-") && cookie.getValue().contains("-") ) {
                	System.out.println("valeur deuxieme appel"+cookie.getValue());
                	article = new Article();
                	article.setDescription(cookie.getValue().split("-")[0]);
                	article.setUnitaryPrice(Double.parseDouble(cookie.getValue().split("-")[1].trim()));
                    cookiesSelec.add(article);
                }
            }
            request.setAttribute("cookies", cookiesSelec);
        }
        this.getServletContext().getRequestDispatcher("/checkout.jsp").forward(request, response);
	}

}
