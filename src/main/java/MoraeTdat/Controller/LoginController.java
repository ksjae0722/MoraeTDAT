package MoraeTdat.Controller;

import MoraeTdat.Service.UserService;
import MoraeTdat.data.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/MoraeTDAT/login")
public class LoginController {

    final UserService userService;
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    //로그인 화면
    @RequestMapping(value="", method= RequestMethod.GET)
    public ModelAndView login(ModelAndView mav) {
        mav.setViewName("login");
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/process", method= RequestMethod.POST)
    public Map<String,Object> loginprocess(ModelAndView mav,
                                           @RequestBody Map<String,Object> logInfo,
                                           HttpServletRequest request) {
        //클라이언트에 넘길 데이터 담을 맵
        Map<String,Object> login = new HashMap<>();

        boolean login_status = userService.confirmLogin(logInfo);
        User loginUser = userService.findUserById((String)logInfo.get("id"));

        HttpSession session = request.getSession();

        session.setMaxInactiveInterval(60*60);
        session.setAttribute("loginUser",loginUser);
        session.setAttribute("loginID",(String)logInfo.get("id"));

        if(login_status) {
            login.put("login", true);
            login.put("id", logInfo.get("id"));
        } else
            login.put("login",false);

        return login;
    }



}
