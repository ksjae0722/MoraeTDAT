package MoraeTdat.data.Entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Order {

    @Id
    private Long productnum;

    @Column(nullable = false)
    private String productName;

    @Column(nullable = false)
    private Long productprice;

    private String productoption;

    @Column(nullable = false)
    private String ordername;

    @Column(nullable = false)
    private String orderphone;

    @Column(nullable = false)
    private String orderemail;

    @Column(nullable = false)
    private int deliverzcode;

    @Column(nullable = false)
    private String deliveraddr;

    @Column(nullable = false)
    private String delivename;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private String ordernum;

    @Column(nullable = false)
    private Date orderdate;

    public Long getProductnum() {
        return productnum;
    }

    public void setProductnum(Long productnum) {
        this.productnum = productnum;
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

    public String getOrdername() {
        return ordername;
    }

    public void setOrdername(String ordername) {
        this.ordername = ordername;
    }

    public String getOrderphone() {
        return orderphone;
    }

    public void setOrderphone(String orderphone) {
        this.orderphone = orderphone;
    }

    public String getOrderemail() {
        return orderemail;
    }

    public void setOrderemail(String orderemail) {
        this.orderemail = orderemail;
    }

    public int getDeliverzcode() {
        return deliverzcode;
    }

    public void setDeliverzcode(int deliverzcode) {
        this.deliverzcode = deliverzcode;
    }

    public String getDeliveraddr() {
        return deliveraddr;
    }

    public void setDeliveraddr(String deliveraddr) {
        this.deliveraddr = deliveraddr;
    }

    public String getDelivename() {
        return delivename;
    }

    public void setDelivename(String delivename) {
        this.delivename = delivename;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum;
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }
}
