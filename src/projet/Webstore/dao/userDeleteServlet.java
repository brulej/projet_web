package projet.Webstore.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userDeleteServlet")
public class userDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public userDeleteServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in the doGet");
		String idUser = request.getParameter("idUser");

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
			System.out.println("Connection BDD réussi - pour suppression");
			String strSQLDelete = "delete from user where idUser='" + idUser + "'";
			try(Statement state = connection.createStatement()){
				System.out.println(strSQLDelete);
				state.executeUpdate(strSQLDelete);
			}
			
			System.out.println("Succes de suppression");

			request.getRequestDispatcher("admin.jsp").forward(request, response);
		} catch (SQLException e) {
			throw new IllegalStateException(e);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in the doPost");
	}



}
