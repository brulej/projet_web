package projet_web_master;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
import com.paypal.api.payments.*;
import com.paypal.base.rest.PayPalRESTException;
 

/**
 * Cette class est un servlet qui sert � effectuer de paiement, 
 * c'est la derni�re �tape du paiement Paypal
 * il est invoqu� par review.jsp et envoie vers recepit.jsp
 * @author jer91
 */

@WebServlet("/execute_payment")
public class ExecutePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ExecutePaymentServlet() {
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
 
        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.executePayment(paymentId, payerId);
             
            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
             
            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);          
 
            request.getRequestDispatcher("receipt.jsp").forward(request, response);
             
        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
 
}