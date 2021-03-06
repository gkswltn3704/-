package spring_web06_controller_anno;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	// ModelAndView 객체 대신 기본의 Model 2 방식을 사용 하고 있음
	@RequestMapping(value = "hello.do")
	public String sayHello(HttpServletRequest req) {
		
		String data = req.getParameter("data");
		
		req.setAttribute("data", data);

		return "hello";
		
	}
	
}
