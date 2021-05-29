package projet.Webstore.dao;

public class Article {

    private int idArticle;
    private String description;
    private String brand;
    private double unitaryPrice;
    private String photo;
    
    
    public Article() {
        this( 0, "unknown", "unknown", 0 ,"");
    }
    
    
    public Article( int idArticle, String description, String brand, double unitaryPrice,String photo ) {
        this.setIdArticle( idArticle );
        this.setDescription( description );
        this.setBrand( brand );
        this.setUnitaryPrice( unitaryPrice );
        this.setPhoto( photo );
    }


    public int getIdArticle() {
        return idArticle;
    }
    
    public void setIdArticle(int idArticle) {
        this.idArticle = idArticle;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getBrand() {
        return brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }
    
    public double getUnitaryPrice() {
        return unitaryPrice;
    }
    
    public void setUnitaryPrice(double unitaryPrice) {
        this.unitaryPrice = unitaryPrice;
    }
    
    public String getPhoto() {
        return photo;
    }
    
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
    
}