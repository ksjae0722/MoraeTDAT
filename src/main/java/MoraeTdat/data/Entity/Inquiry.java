package MoraeTdat.data.Entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Inquiry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int inquirynum;

    @Column(nullable = false)
    private Date regiDate;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String content;

    private Date answerdate;

    private String answertitle;

    private String answercontent;

    public int getInquirynum() {
        return inquirynum;
    }

    public void setInquirynum(int inquirynum) {
        this.inquirynum = inquirynum;
    }

    public Date getRegiDate() {
        return regiDate;
    }

    public void setRegiDate(Date regiDate) {
        this.regiDate = regiDate;
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

    public Date getAnswerdate() {
        return answerdate;
    }

    public void setAnswerdate(Date answerdate) {
        this.answerdate = answerdate;
    }

    public String getAnswertitle() {
        return answertitle;
    }

    public void setAnswertitle(String answertitle) {
        this.answertitle = answertitle;
    }

    public String getAnswercontent() {
        return answercontent;
    }

    public void setAnswercontent(String answercontent) {
        this.answercontent = answercontent;
    }
}
