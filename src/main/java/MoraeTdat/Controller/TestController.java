package MoraeTdat.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
ㄴ
@Controller
@RequestMapping("/test")
public class TestController {
	@RequestMapping(value="/hello")
	public ModelAndView hello(Model model) {
		ModelAndView mav = new ModelAndView();
		
				
		return mav;
	}
}
