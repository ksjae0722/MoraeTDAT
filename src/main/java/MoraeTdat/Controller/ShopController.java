package MoraeTdat.Controller;

import MoraeTdat.Service.Define;
import MoraeTdat.Service.ShopService;
import MoraeTdat.data.Entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
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
            mav.addObject("productList",shopService.shoplistByCategory(Define.TSHIRTS));

        } else if(category.equals("living")){
            mav.addObject("productList",shopService.shoplistByCategory(Define.LIVING));

        } else if(category.equals("office")){
            mav.addObject("productList",shopService.shoplistByCategory(Define.OFFICE));

        } else if(category.equals("cute")){
            mav.addObject("productList",shopService.shoplistByCategory(Define.CUTE));

        } else if(category.equals("preorder")){
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
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        cartinfo = shopService.cartinfoBynum(productnum);

        String productname = cartinfo.getProductname();
        int productprice = cartinfo.getProductprice();


        shopService.addCartByProductnum(productnum,productname,productprice,userid,date);

        addCart.put("addcart",true);

        return addCart;
    }

}
