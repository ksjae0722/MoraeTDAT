package MoraeTdat.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MoraeTdat.Service.TestService;

@Controller
public class TestController {
	@Autowired
	TestService service;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView hello(ModelAndView mav) {
		
		//service.testQuery();
		
		mav.setViewName("/main");
		mav.addObject("ID", "admin");
		Map<String, Object> map = null;
		map.put("ID", "admin");
		map.put("PW", "1234");
		map.put("ID", "admin");
		mav.addAllObjects(map);
				
		return mav;
	}
}