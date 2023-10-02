package MoraeTdat.data.Entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
@Getter
@Setter
@NoArgsConstructor
public class Heart {

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

}
