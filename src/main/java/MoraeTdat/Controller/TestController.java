package MoraeTdat.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class TestController {
	@RequestMapping(value="/main")
	public ModelAndView hello(Model model) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/main");
				
		return mav;
	}
}
