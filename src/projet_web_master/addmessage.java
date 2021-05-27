package projet_web_master;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import projet.Webstore.dao.User;
import projet.Webstore.dao.UserDAO;

import java.io.File;
import java.io.FileInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import projet.Webstore.dao.MessageDAO;
/**
 * Servlet implementation class addmessage
 */
@WebServlet("/addmessage")
@MultipartConfig( fileSizeThreshold = 1048576, 
maxFileSize = 10485760,
maxRequestSize = 10485760 * 5 )
public class addmessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected static String dbURL= "toto";
    protected static String dbLogin;
    protected static String dbPassword;
    protected static ServletContext context;
    public String uploadPath;
    public static final String IMAGES_FOLDER = "/Images";

    public addmessage() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("Vérification dossier créé");
       uploadPath = getServletContext().getRealPath( IMAGES_FOLDER ); // chemin vers lequel vont être stockée les images
        System.out.println(uploadPath);
        File uploadDir = new File( uploadPath );
        if ( ! uploadDir.exists() ) uploadDir.mkdirs();
        System.out.println("- dossier créé ok" + uploadPath);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String names = request.getParameter("names");
		String mail = request.getParameter("mail");
		String tel = request.getParameter("tel");
		String message = request.getParameter("mes");
		String cheminImages = fileDirector (request);
		
        MessageDAO dao = new MessageDAO();
        dao.setContext(getServletContext());
        dao.sendMessage( names,  mail ,  tel, cheminImages, message);
	}
	
	private String fileDirector (HttpServletRequest request)throws ServletException, IOException {
		String ensembleChemins = "";
		for (Part part : request.getParts()) {
			if (!part.getName().equals("multiPartServlet")) continue; // continue permet de passer au tour suivant
			String nomFichier = getFileName(part);
			//if (nomFichier!="Default.file") {
				nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );
				//String nomFichier = getFileName(part);
				String cheminComplet  = uploadPath + File.separator + nomFichier;
				part.write(cheminComplet);
				ensembleChemins = ensembleChemins + cheminComplet + " ";
			//}
		}
		ensembleChemins=ensembleChemins.trim();
		return ensembleChemins;
	}
	
	private String getFileName (Part part) {
		for(String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf("=")+2, content.length()-1); //foncitonne chrome
				//return content.substring( content.indexOf( '=' ) + 1 ).trim().replace( "\"", "" );
			}
		}
		return "Default.file";
	}
}
