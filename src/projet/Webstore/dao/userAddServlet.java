package projet.Webstore.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userAddServlet")
public class userAddServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public userAddServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String h = request.getParameter("h"); 
		String f = request.getParameter("f"); 
        String prenom = request.getParameter("prenom"); 
		String mlle = request.getParameter("mlle"); 
		String mme = request.getParameter("mme"); 
		String mr= request.getParameter("mr"); 
		String jour= request.getParameter("jour"); 
		String annee = request.getParameter("annee"); 
		String mois = request.getParameter("mois"); 
		String adresse = request.getParameter("adresse"); 
		String codePostale = request.getParameter("codePostale"); 
		String ville = request.getParameter("ville");
		String Tel = request.getParameter("Tel"); 
		String login = request.getParameter("login");
		String password = request.getParameter("password");

		System.out.println("in the doPost");

		Properties props = new Properties();

		try (FileInputStream fis = new FileInputStream("C:\\web\\projet_web\\src\\projet\\Webstore\\dao\\config.properties")){
			props.load(fis);
		}

		try {
			Class.forName(props.getProperty("jdbc.driver.class"));
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException(e);
		}

		String url = props.getProperty("jdbc.url");
		String login_jdbc = props.getProperty("jdbc.login");
		String password_jdbc = props.getProperty("jdbc.password");

		try(Connection connection = DriverManager.getConnection(url, login_jdbc, password_jdbc)){
			System.out.println("Connection BDD réussi -  pour insertion");
			String strSQLInsert = "insert into t_users (h, f, mr, mme, mlle, jour, annee, mois, login, password, nom, prenom, Tel, adresse, codePostale, ville) values ('" + h + " ','" + f + " ','" + mr + " ','" + mme + " ','" + mlle + " ','" + jour + " ','" + annee + " ','" + mois + " ','" + login + " ', '" + password +"', '" + nom +"', '" + prenom +"', '" +Tel  +"', '" + adresse +"', '" + codePostale +"', '" + ville +"')";
			try(Statement state = connection.createStatement()){
				state.executeUpdate(strSQLInsert);
			}
			
			System.out.println("Succes insertion");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (SQLException e) {
			throw new IllegalStateException(e);
		}
	}


}