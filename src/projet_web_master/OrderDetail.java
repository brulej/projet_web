package projet_web_master;

public class OrderDetail {
    private String productName;
    private double subtotal;
    private double shipping;
    private double tax;
    private double total;
 
    public OrderDetail(String productName, String subtotal,
            String shipping, String tax, String total) {
        this.productName = productName;
        this.subtotal = Double.parseDouble(subtotal);
        this.shipping = Double.parseDouble(shipping);
        this.tax = Double.parseDouble(tax);
        this.total = Double.parseDouble(total);
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
     
    public String getTotal() {
        return String.format("%.2f", total).replace(',', '.');
    }
}