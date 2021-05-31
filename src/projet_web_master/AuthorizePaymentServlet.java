package projet_web_master;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.paypal.api.payments.Item;
import com.paypal.base.rest.PayPalRESTException;

import projet.Webstore.dao.Article;
 

/**
 * Cette classe est un servlet qui sert à lancer l'autorisation de paiement, 
 * c'est la première étape du paiement Paypal
 * 
 * @author jer91
 */

@WebServlet("/authorize_payment")
public class AuthorizePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public AuthorizePaymentServlet() {
    }
    
    public int getnbproduct(HttpServletRequest request) {
    	
        Cookie[] cookies = request.getCookies();
        List<Article> cookiesSelec = new ArrayList();
        Article article;
        int i =0;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().startsWith("article--") && cookie.getValue().contains("-") ) {
                i++;
                }
            }
        }
    	return i;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	
    	String product ;
    	String subtotal ;
    	String shipping ;
    	String tax ;
    	double taxnum;
    	String Qte ;
    	List<OrderDetail> orderDetails = new ArrayList<>();
    	OrderDetail orderDetail;
    	
    	Qte = "1";
    	
    	int nbproduct = getnbproduct(request);
    	
    	System.out.println("nbproducts : "+nbproduct);
    	for ( int i = 1; i<= nbproduct; i ++) {
    		
    		product= request.getParameter("products"+i);
    		subtotal= request.getParameter("subtotals"+i);
    		shipping=request.getParameter("shipping");
    		taxnum =(Double.parseDouble(subtotal.trim()))*0.2;
        	tax= Double.toString(taxnum).replace(',', '.');
        
        orderDetail = new OrderDetail(product, subtotal, shipping, tax,  Qte);
        orderDetails.add( orderDetail);
    	}
         
 
        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetails);
 
            response.sendRedirect(approvalLink);
             
        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
 
}
