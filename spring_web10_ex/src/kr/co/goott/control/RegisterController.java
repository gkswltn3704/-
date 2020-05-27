package kr.co.goott.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goott.dto.MemberDTO;

@Controller
public class RegisterController {
	
	@RequestMapping("/register/step1.do")
	public String processStep1() {
		return "step1";
	}
	
	@RequestMapping("/register/step2.do")
	public String processStep2(HttpServletRequest req) {
		
		String ck = req.getParameter("ck");
		
		if(ck == null) {				//체크값이 없다면
			return "step1";				// 이동 x
		}else {
			return "step2";				// 이동 o
		}
		
	}
	
//	
//	@RequestMapping("/register/step3.do")
//	public String processStep3(
		//  @RequestParam(value = "no", defaultValue = 0)int no, // 형변환을 쉽게 해줌
//			@RequestParam(value = "id", defaultValue = "aaa", required = true)String id,
//			@RequestParam(value = "pwd")String pwd,
//			@RequestParam(value = "confirm")String confirm,
//			@RequestParam(value = "email")String email,
//			Model model /*데이터를 보낼 객체*/){
//		
//		MemberDTO dto = new MemberDTO();
//		dto.setId(id);
//		dto.setPwd(pwd);
//		dto.setConfirm(confirm);
//		dto.setEmail(email);
//		
//		//DBMS 접근해서 입력
//
//		//MysqlDAO dao = new MysqlDAO();
//		//dao.insertOne(dto);
//
//		
//		model.addAttribute("dto", dto);
//		
//		return "welcome";		// 최종으로 보낼 이름? 
//	}

	@RequestMapping("/register/step3.do")
	public String processStep3(
		@ModelAttribute()MemberDTO dto, Model model) {
				
		model.addAttribute("dto", dto);
				
		return "welcome";
	}
	
	
	@RequestMapping("/main")
	public String processStep4() {
		return "main";
	}
	
	
	
}
