package MoraeTdat.data.Entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Notice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int noticenum;

    @Column(nullable = false)
    private Date regidate;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String content;

    public int getNoticenum() {
        return noticenum;
    }

    public void setNoticenum(int noticenum) {
        this.noticenum = noticenum;
    }

    public Date getRegidate() {
        return regidate;
    }

    public void setRegidate(Date regidate) {
        this.regidate = regidate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
