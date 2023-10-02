package MoraeTdat.data.Entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
@Getter
@Setter
@NoArgsConstructor
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

}
