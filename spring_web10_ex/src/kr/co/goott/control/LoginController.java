package kr.co.goott.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	//@GetMapping - get방식
	//@PostMapping - post방식
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public String loginProcess1() {
		return "login/login";					//login 폴더 안에 login파일 !
	}
	
	
	
	
}
