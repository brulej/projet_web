package projet_web_master;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("textLogin");
		String password = request.getParameter("textPassword"); 
		if ( login == null ) login=""; 
		if ( password == null ) password = ""; 
		
		HttpSession session = request.getSession(true) ; 
		session.setAttribute( "login", login); 
		session.setAttribute( "password", login); 
		
		request.getRequestDispatcher( "/signin.jsp").forward(request,response); 

		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("textLogin");
		String password = request.getParameter("textPassword"); 
		
		System.out.println("in the doPost");
		if 	( login.equals( "bond" ) && password.equals( "007" )) {
			request.getRequestDispatcher( "/index.jsp").forward(request,response);
				
			
		}else {
			request.getRequestDispatcher( "/signin.jsp").forward(request,response);	}


}
}
