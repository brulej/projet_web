package projet_web_master;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.paypal.api.payments.Item;
import com.paypal.base.rest.PayPalRESTException;
 

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
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	
    	String product ;
    	String subtotal ;
    	String shipping ;
    	String tax ;
    	String Qte ;
    	List<OrderDetail> orderDetails = new ArrayList<>();
    	OrderDetail orderDetail;
    	
    	Qte = "1";
    	int nbproduct = 1;
    	
    	for ( int i = 0; i< nbproduct; i ++) {
    		product= request.getParameter("product"+i);
    		subtotal= request.getParameter("subtotal"+i);
    		shipping=request.getParameter("shipping"+i);
    		tax= request.getParameter("tax"+i);
        
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
