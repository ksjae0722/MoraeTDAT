package MoraeTdat.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import MoraeTdat.Service.Define;
import MoraeTdat.Service.MoraeService;

@Controller
@RequestMapping("/MoraeTDAT")
public class MoraeController {
	
	final MoraeService moraeService;
	
	@Autowired
	public MoraeController(MoraeService moraeService) {
		this.moraeService = moraeService;
	}
	
	//메인 화면
	@GetMapping("/home")
	public String main() {
		//moraeService.getProducts();
		return "home";
	}
	
	//로그인 화면
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	//회원가입 화면
	@GetMapping("/register")
	public String register() {
		
		return "signup";
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
