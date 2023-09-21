package MoraeTdat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import MoraeTdat.service.Define;
import MoraeTdat.service.MoraeService;

@Controller
@RequestMapping("/MoraeTDAT")
public class MoraeController {
	
	final MoraeService moraeService;
	
	@Autowired
	public MoraeController(MoraeService moraeService) {
		this.moraeService = moraeService;
	}
	
	//메인 화면
	@RequestMapping("/home")
	public String main() {
		
		return "home";
	}
	
	//로그인 화면
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	//회원가입 화면
	@RequestMapping("/register")
	public String register() {
		
		return "signup";
	}
	
	//마이페이지 화면
	@RequestMapping("/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	//네비바 메뉴
	@RequestMapping("/category")
	public String category(@RequestParam String gubun,
						   @SessionAttribute Model m) {
		String page = "";
		
		if(gubun.equals(Define.INQUIRY)) {	
			page = "inquiry";
			
		} else if(gubun.equals(Define.NOTICE)) {
			page = "notice";
			
		}  else if(gubun.equals(Define.CONTACTUS)) {
			page = "contactus";
			
		}  else if(gubun.equals(Define.ABOUTMORAE)) {
			page = "aboutMorae";
			
		} else {
			page = "shop";
			
		}
		
		m.addAttribute("gubun",gubun);
		return page;
	}
	
	//상품 상세 화면
	@RequestMapping("/shopdetail")
	public String shopdetail() {
		
		return "shopdetail";
	}
	
	//결제 화면
	@RequestMapping("/checkout")
	public String checkout() {
		
		return "checkout";
	}
	
	//주문 내역 화면
	@RequestMapping("/orderdetail")
	public String orderdetail() {
		
		return "orderdetail";
	}
	
	//찜 목록 화면
	@RequestMapping("/heartlist")
	public String heartlist() {
		
		return "heartlist";
	}
	
}
