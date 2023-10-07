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
    Product getProductBynum(int productnum);

    @Transactional
    @Modifying
    @Query(value="INSERT INTO cart (productnum, productname, productprice, productoption, userid, cartdate, amount) values (:productnum, :productname, :productprice, :productoption, :userid, now(), :amount)", nativeQuery = true)
    void addCartByProductnum(@Param("productnum") int productnum, @Param("productname") String productname, @Param("productprice") int productprice,
                             @Param("productoption") String productoption, @Param("userid") String userid,@Param("amount") int amount);

    @Transactional
    @Modifying
    @Query(value="INSERT INTO cart (productnum, productname, productprice, userid, cartdate, amount) values (:productnum, :productname, :productprice, :userid, now(),amount+1)", nativeQuery = true)
    void addCartByProductnumAtList(@Param("productnum") int productnum, @Param("productname") String productname, @Param("productprice") int productprice, @Param("userid") String userid);

    @Transactional
    @Modifying
    @Query(value="INSERT INTO heart (productnum, productname, productprice, userid) values (:productnum, :productname, :productprice, :userid)", nativeQuery = true)
    void addHeartByProductnum(@Param("productnum") int productnum, @Param("productname") String productname, @Param("productprice") int productprice, @Param("userid") String userid);


    @Query(value="SELECT * FROM product WHERE productname LIKE %?1% AND category = ?2", nativeQuery = true)
    List<Product> searchByKeyword(String keyword, String category);

    @Query(value = "select count(*) from cart where productnum =?", nativeQuery = true)
    int isExistsProduct(int productnum);

    @Transactional
    @Modifying
    @Query(value = "update cart set amount = amount+?  where productnum =?", nativeQuery = true)
    void updateAmount(int amount,int productnum);

}
