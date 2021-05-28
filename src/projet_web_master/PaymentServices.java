package projet_web_master;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
 
import com.paypal.api.payments.*;
import com.paypal.base.rest.*;
 
/**
 * Cette classe fournit toutes les méthodes spécifiques, nécéssaires au payment paypal
 * 
 * @author jer91
 */

public class PaymentServices {
    private static final String CLIENT_ID = "AVh6_A9TgqfYBPiYR4thIKmuSYzpskR4lpBbCemZK-oY2p6_Qv6uAUaJEKhYrt7iCGij6UYrB1rC2HWy";
    private static final String CLIENT_SECRET = "EMW84W3euo3guDHqskLU2jaMj63fz5FY_Hm8UkB-MNeu_RVxJ_pL_-wiLfWiSle4sBQm8Gqyy5Mt_OqO";
    private static final String MODE = "sandbox";
 
    
    
    public String authorizePayment(List<OrderDetail> orderDetail)        
            throws PayPalRESTException {       
 
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectURLs();
        List<Transaction> listTransaction = getTransactionInformation(orderDetail);
        System.out.println(listTransaction);
        
        
        Payment requestPayment = new Payment();

        requestPayment.setTransactions(listTransaction);
        requestPayment.setRedirectUrls(redirectUrls);
        requestPayment.setPayer(payer);
        requestPayment.setIntent("authorize");
        
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        Payment approvedPayment = requestPayment.create(apiContext);

        return getApprovalLink(approvedPayment);
 
    }
     
    private Payer getPayerInformation() {
        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");
         
        PayerInfo payerInfo = new PayerInfo();
        payerInfo.setFirstName("John")
                 .setLastName("Doe")
                 .setEmail("sb-cvjpd6161900@personal.example.com");
         
        payer.setPayerInfo(payerInfo);
         
        return payer;
    }
     
    private RedirectUrls getRedirectURLs() {
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8081/projet_web_master/cancel.html");
        redirectUrls.setReturnUrl("http://localhost:8081/projet_web_master/review_payment");
        return redirectUrls;
    }
     
    
    public String reformatDouble(double chiffre) {
        return String.format("%.2f", chiffre).replace(',', '.');
    }
    
    
    private List<Transaction> getTransactionInformation(List<OrderDetail> orderDetail) {
    	
        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();
        Transaction transaction = new Transaction();
        Amount amount = new Amount();
        Details details = new Details();
        
        double global_shipping =0d;
        double global_tax =0d;
        double global_subtotal=0d;
        double global_total=0d;
        
        DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        String dateDujour =format.format(date);
        

    	for (int i= 0; i <orderDetail.size(); i++ ) {
        
    	//Insertion de l'item
        Item item = new Item();
        item.setCurrency("EUR");
        item.setName(orderDetail.get(i).getProductName());
        item.setPrice(orderDetail.get(i).getSubtotal());
        item.setTax(orderDetail.get(i).getTax());
        item.setQuantity(orderDetail.get(i).getQte());
         
        items.add(item);
        
        //Calcul du montant
        
        global_tax = global_tax + orderDetail.get(i).getTaxdouble();
        global_subtotal = global_subtotal + orderDetail.get(i).getSubtotaldouble();
         
    	}
    	global_shipping = orderDetail.get(0).getShippingdouble(); // pas idéal mais demanderait de revoir la totalité du code, On prend le premier car tous les cout de livraison sont identiques
    	global_total = global_shipping + global_subtotal + global_tax;
    	
        details.setShipping(reformatDouble(global_shipping));
        details.setSubtotal(reformatDouble(global_subtotal));
        details.setTax(reformatDouble(global_tax));
        
        
        amount.setCurrency("EUR");
        amount.setTotal(reformatDouble(global_total));
        amount.setDetails(details);
        
        
        transaction.setAmount(amount);
        transaction.setDescription("commande du "+ dateDujour);
         
        
        itemList.setItems(items);
        transaction.setItemList(itemList);
     
        List<Transaction> listTransaction = new ArrayList<>();
        listTransaction.add(transaction);  
         
        return listTransaction;
    }
     
    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;
        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }      
        return approvalLink;
    }
    
    
    public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        return Payment.get(apiContext, paymentId);
    }
    
    
    public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException {
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerId);
        Payment payment = new Payment().setId(paymentId);
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
        return payment.execute(apiContext, paymentExecution);
    }
}