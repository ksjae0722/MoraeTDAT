package MoraeTdat.Service;

import MoraeTdat.data.Entity.Product;
import MoraeTdat.data.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Component
public class ShopService {
    private final ProductRepository productRepository;

    @Autowired
    public ShopService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> shoplistByCategory(String category){
        List<Product> productList = new ArrayList<>();
        productList = productRepository.shoplistByCategory(category);

        return productList;
    }

    public Product cartinfoBynum(int productnum){
        Product cartinfo = new Product();

        cartinfo = productRepository.getProductBynum(productnum);
        return cartinfo;
    }

    public Product getProductBynum(int productnum){
        Product cartinfo = new Product();

        cartinfo = productRepository.getProductBynum(productnum);
        return cartinfo;
    }

    public void addCartByProductnum(int productnum, String productname, int productprice, String productoption, String userid, int amount){
        productRepository.addCartByProductnum(productnum, productname, productprice, productoption, userid, amount);
    }

    public void addCartByProductnumAtList(int productnum, String productname, int productprice, String userid){
        productRepository.addCartByProductnumAtList(productnum, productname, productprice, userid);
    }

    public void addHeartByProductnum(int productnum, String productname, int productprice, String userid){
        productRepository.addHeartByProductnum(productnum, productname, productprice, userid);
    }

    public List<Product> searchByKeyword(String keyword, String category) {
        return productRepository.searchByKeyword(keyword,category);
    }

    public int isExistsProduct(int productnum){
        return productRepository.isExistsProduct(productnum);
    }

    public void updateAmount(int amount, int productnum){
        productRepository.updateAmount(amount,productnum);
    }
}
