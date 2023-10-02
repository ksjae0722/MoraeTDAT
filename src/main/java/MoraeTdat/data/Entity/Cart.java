package MoraeTdat.data.Entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.bind.annotation.GetMapping;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table
@Getter
@Setter
@NoArgsConstructor
public class Cart {

    @Id
    private String userid;

    @Column(nullable = false)
    private Long productnum;

    @Column(nullable = false)
    private String productname;

    @Column(nullable = false)
    private Long productprice;

    @Column
    private String productoption;

    @Column(nullable = false)
    private Date cartdate;

}


