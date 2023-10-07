package MoraeTdat.Controller;

import MoraeTdat.Service.Define;
import MoraeTdat.Service.ShopService;
import MoraeTdat.data.Entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.*;

@Controller
@RequestMapping(value="/MoraeTDAT/shop")
public class ShopController {

    final ShopService shopService;

    @Autowired
    public ShopController(ShopService shopService){
        this.shopService = shopService;
    }

    @RequestMapping(value="", method= RequestMethod.GET)
    public ModelAndView shopByCategory(ModelAndView mav,
                                       @RequestParam String category) {
        if(category.equals("tshirts")){
            mav.addObject("category",Define.TSHIRTS);
            mav.addObject("productList",shopService.shoplistByCategory(Define.TSHIRTS));

        } else if(category.equals("living")){
            mav.addObject("category",Define.LIVING);
            mav.addObject("productList",shopService.shoplistByCategory(Define.LIVING));

        } else if(category.equals("office")){
            mav.addObject("category",Define.OFFICE);
            mav.addObject("productList",shopService.shoplistByCategory(Define.OFFICE));

        } else if(category.equals("cute")){
            mav.addObject("category",Define.CUTE);
            mav.addObject("productList",shopService.shoplistByCategory(Define.CUTE));

        } else if(category.equals("preorder")){
            mav.addObject("category",Define.PREORDER);
            mav.addObject("productList",shopService.shoplistByCategory(Define.PREORDER));

        }

        mav.setViewName("shop");
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/cart", method = RequestMethod.POST)
    public Map<String,Object> cart(ModelAndView mav,
                                   @RequestBody Map<String,Object> cart,
                                   @SessionAttribute(value = "loginID") String userid){
        Map<String,Object> addCart = new HashMap<>();
        Product cartinfo = new Product();
        int productnum = (int)cart.get("productnum");
        System.out.println(shopService.isExistsProduct(productnum));
        //등록한 적 있는 물건
        if(shopService.isExistsProduct(productnum)>0){
            String isdetail = (String)cart.get("isdetail");

            //상품 상세화면에서 장바구니에 담았을 때
            if(isdetail.equals("done")){
                int amount = Integer.parseInt((String)cart.get("amount"));
                shopService.updateAmount(Integer.parseInt((String)cart.get("amount")),productnum);
            } else {
                shopService.updateAmount(1,productnum);
            }
        //신규로 등록된 물건
        } else {
            String isdetail = (String)cart.get("isdetail");

            cartinfo = shopService.cartinfoBynum(productnum);

            String productname = cartinfo.getProductname();
            int productprice = cartinfo.getProductprice();
            String productoption = "";
            int amount = 0;

            //상품 상세화면에서 장바구니에 담았을 때
            if(isdetail.equals("done")){
                productoption = (String)cart.get("productoption");
                amount = Integer.parseInt((String)cart.get("amount"));

                shopService.addCartByProductnum(productnum,productname,productprice,productoption,userid,amount);
            } else {
                shopService.addCartByProductnumAtList(productnum,productname,productprice,userid);
            }
        }






        addCart.put("addcart",true);

        return addCart;
    }

    @ResponseBody
    @RequestMapping(value="/heart", method = RequestMethod.POST)
    public Map<String,Object> heart(ModelAndView mav,
                                   @RequestBody Map<String,Object> heart,
                                   @SessionAttribute(value = "loginID") String userid){
        Map<String,Object> addheart = new HashMap<>();
        Product heartProduct = new Product();
        int productnum = (int)heart.get("productnum");

        heartProduct = shopService.getProductBynum(productnum);

        String productname = heartProduct.getProductname();
        int productprice = heartProduct.getProductprice();

        shopService.addHeartByProductnum(productnum,productname,productprice,userid);

        addheart.put("addheart",true);

        return addheart;
    }

    @RequestMapping(value="/shopdetail", method= RequestMethod.GET)
    public ModelAndView shopdetail(ModelAndView mav,
                                       @RequestParam String productnum) {
        Product product = new Product();
        product = shopService.getProductBynum(Integer.parseInt(productnum));

        mav.setViewName("shopdetail");
        mav.addObject("product",product);

        return mav;
    }



    @RequestMapping(value="/search", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView category(ModelAndView mav,
                             @RequestParam String keyword,
                             @RequestParam String category){

        List<Product> resultList = shopService.searchByKeyword(keyword,category);

        mav.addObject("resultList",resultList);
        mav.addObject("search","done");

        mav.setViewName("shop");
        return mav;
    }
}
