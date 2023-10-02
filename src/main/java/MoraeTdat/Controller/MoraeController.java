package MoraeTdat.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import MoraeTdat.Service.MoraeService;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/MoraeTDAT")
public class MoraeController {
	
	final MoraeService moraeService;
	
	@Autowired
	public MoraeController(MoraeService moraeService) {
		this.moraeService = moraeService;
	}

	@RequestMapping(value="/home", method= RequestMethod.GET)
	public ModelAndView main(ModelAndView mav) {
		mav.setViewName("/home");

		return mav;
	}

	@RequestMapping(value="/logout", method= RequestMethod.GET)
	public ModelAndView logout(ModelAndView mav, HttpServletRequest request) {

		HttpSession session = request.getSession();

		session.invalidate();

		mav.addObject("logout",true);
		mav.setViewName("/login");

		return mav;
	}


	//마이페이지 화면
	@GetMapping("/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	//네비바 메뉴
	@GetMapping("/category")
	public String category(@RequestParam String gubun,
						   @SessionAttribute Model m) {
		
		m.addAttribute("gubun",gubun);
		return "shop";
	}
	
	//상품 상세 화면
	@GetMapping("/shopdetail")
	public String shopdetail() {
		
		return "shopdetail";
	}
	
	//결제 화면
	@GetMapping("/checkout")
	public String checkout() {
		
		return "checkout";
	}
	
	//주문 내역 화면
	@GetMapping("/orderdetail")
	public String orderdetail() {
		
		return "orderdetail";
	}
	
	//찜 목록 화면
	@GetMapping("/heartlist")
	public String heartlist() {
		
		return "heartlist";
	}
	
	//찜 목록 화면
	@GetMapping ("/morae")
	public String aboutMorae() {
		
		return "AboutMorae";
	}

	//문의사항
	@GetMapping ("/inquiry")
	public String inquiry() {

		return "inquiry";
	}

	//공지사항
	@GetMapping ("/notice")
	public String notice() {

		return "notice";
	}
}
