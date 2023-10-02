package MoraeTdat.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/MoraeTDAT/admin")
public class AdminController {

    @GetMapping("")
    public String adminLogin(){
        return "admin";
    }

    @GetMapping ("/login")
    public String adminMain(){

        return "home";
    }


}