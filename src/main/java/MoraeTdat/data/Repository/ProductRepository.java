package MoraeTdat.data.Repository;

import MoraeTdat.data.Entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.persistence.Id;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Long> {

    //@Query("select productprice from Product where Product.productNum=?")
   // List<Product> findByNum(Long productnum);

}
