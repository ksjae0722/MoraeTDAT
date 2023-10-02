package MoraeTdat.data.Repository;

import MoraeTdat.data.Entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {

    @Query(value="SELECT * from product where category=?", nativeQuery = true)
    List<MoraeTdat.data.Entity.Product> shoplistByCategory(String category);

    @Query(value ="SELECT * from product where productnum=?", nativeQuery = true)
    Product cartinfoBynum(int productnum);

    @Transactional
    @Modifying
    @Query(value="INSERT INTO cart (productnum, productname, productprice, userid, cartdate) values (:productnum, :productname, :productprice, :userid, :cartdate)", nativeQuery = true)
    void addCartByProductnum(@Param("productnum") int productnum, @Param("productname") String productname, @Param("productprice") int productprice, @Param("userid") String userid, @Param("cartdate") Date cartdate);



}
