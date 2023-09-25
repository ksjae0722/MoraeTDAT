package MoraeTdat.data.Entity;

import javax.persistence.*;

@Entity
@Table
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long usernum;
    @Column(nullable = false)
    private String userid;
    @Column(nullable = false)
    private String userpw;
    @Column(nullable = false)
    private String userphone;

    @Column(nullable = false)
    private String useremail;

    @Column(nullable = false)
    private int userzcode;

    @Column(nullable = false)
    private String useraddr;

    public Long getUsernum() {
        return usernum;
    }

    public void setUsernum(Long usernum) {
        this.usernum = usernum;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUserpw() {
        return userpw;
    }

    public void setUserpw(String userpw) {
        this.userpw = userpw;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public int getUserzcode() {
        return userzcode;
    }

    public void setUserzcode(int userzcode) {
        this.userzcode = userzcode;
    }

    public String getUseraddr() {
        return useraddr;
    }

    public void setUseraddr(String useraddr) {
        this.useraddr = useraddr;
    }
}
