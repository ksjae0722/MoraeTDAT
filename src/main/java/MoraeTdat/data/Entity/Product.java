package MoraeTdat.data.Entity;

import javax.persistence.*;

@Entity
@Table
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long productNum;

    @Column(nullable = false)
    private String mainphoto;

    @Column(nullable = false)
    private String detailphoto;

    @Column(nullable = false)
    private String productName;

    @Column(nullable = false)
    private Long productprice;

    private String productoption;

    @Column(nullable = false)
    private String productdetail;

    public Long getProductNum() {
        return productNum;
    }

    public void setProductNum(Long productNum) {
        this.productNum = productNum;
    }

    public String getMainphoto() {
        return mainphoto;
    }

    public void setMainphoto(String mainphoto) {
        this.mainphoto = mainphoto;
    }

    public String getDetailphoto() {
        return detailphoto;
    }

    public void setDetailphoto(String detailphoto) {
        this.detailphoto = detailphoto;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Long getProductprice() {
        return productprice;
    }

    public void setProductprice(Long productprice) {
        this.productprice = productprice;
    }

    public String getProductoption() {
        return productoption;
    }

    public void setProductoption(String productoption) {
        this.productoption = productoption;
    }

    public String getProductdetail() {
        return productdetail;
    }

    public void setProductdetail(String productdetail) {
        this.productdetail = productdetail;
    }
}
