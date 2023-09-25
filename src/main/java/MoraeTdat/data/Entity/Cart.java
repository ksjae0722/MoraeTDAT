package MoraeTdat.data.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table
public class Cart {
    @Id
    private String userid;

    @Column(nullable = false)
    private Long productnum;

    @Column(nullable = false)
    private String productname;

    @Column(nullable = false)
    private Long productprice;

    @Column(nullable = false)
    private String productoption;


    @Column(nullable = false)
    private int deliverfee;

    @Column(nullable = false)
    private Date cartdate;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Long getProductnum() {
        return productnum;
    }

    public void setProductnum(Long productnum) {
        this.productnum = productnum;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
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

    public int getDeliverfee() {
        return deliverfee;
    }

    public void setDeliverfee(int deliverfee) {
        this.deliverfee = deliverfee;
    }

    public Date getCartdate() {
        return cartdate;
    }

    public void setCartdate(Date cartdate) {
        this.cartdate = cartdate;
    }
}


