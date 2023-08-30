package MoraeTdat.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class TestController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView hello(ModelAndView mav) {
		
		mav.setViewName("/main");
		mav.addObject("ID", "admin");
				
		return mav;
	}
}
