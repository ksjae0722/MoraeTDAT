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

        cartinfo = productRepository.cartinfoBynum(productnum);
        return cartinfo;
    }

    public void addCartByProductnum(int productnum, String productname, int productprice, String userid, Date cartdate){
        productRepository.addCartByProductnum(productnum, productname, productprice, userid, cartdate);
    }
}
