package projet_web_master;


/**
 * Cette classe correspond à un objet reprenant les caracteristiques d'un item
 * lors d'une transaction paypal
 * 
 * @author jer91
 */


public class OrderDetail {
    private String productName;
    private double subtotal;
    private double shipping;
    private double tax;
    private double total;
    private int Qte;
 
    public OrderDetail(String productName, String subtotal,
            String shipping, String tax, String Qte) {
        this.productName = productName;
        this.subtotal = Double.parseDouble(subtotal);
        this.shipping = Double.parseDouble(shipping);
        this.tax = Double.parseDouble(tax);
        this.Qte = Integer.parseInt(Qte);
    }
 
    public String getProductName() {
        return productName;
    }
 
    public String getSubtotal() {
        return String.format("%.2f", subtotal).replace(',', '.');
    }
 
    public String getShipping() {
        return String.format("%.2f", shipping).replace(',', '.');
    }
 
    public String getTax() {
        return String.format("%.2f", tax).replace(',', '.');
    }
     
    
    public String getQte() {
        return String.valueOf(Qte)  ;
    }

    public int getQteint() {
        return Qte  ;
    }
    
    public double getSubtotaldouble() {
        return subtotal;
    }
 
    public double getShippingdouble() {
        return shipping;
    }
 
    public double getTaxdouble() {
        return tax;
    }
     

}