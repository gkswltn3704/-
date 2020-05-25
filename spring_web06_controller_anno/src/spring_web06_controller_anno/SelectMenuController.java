package spring_web06_controller_anno;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

// Controller 인터페이스를 상속받은 이전의 방식으로는 한 클래스에서 한가지 일 밖에 못하고 있음
// 그러므로 프로젝트가 커지면 controller가 많이 필요해지는 단점이 있다.

// 이러면 단점 보완을 위해서 annotation 사용하고 있음

@Controller				// 이 객체는 controller라고 알려준다.
public class SelectMenuController {
	
	@RequestMapping(value = "selectMenu.do")				//주소를 지정해줄수 있다.
	public ModelAndView aaa() {
		return new ModelAndView("menu", "test", "아무거나");
	}
	
	@RequestMapping(value = "data.do")						// 이렇게 늘려서 컨트롤러에서 다양한 객체 조작 가능
	public ModelAndView bbb() {
		return new ModelAndView("menu", "test2", "이것저것");
	}
	
	
	
	
	
	
}
