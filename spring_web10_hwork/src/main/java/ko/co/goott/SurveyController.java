package ko.co.goott;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	
	@RequestMapping(value = "/survey/survey.choose")
	public String proecessStpe1() {
		return "surveyForm";
	}
	
	@RequestMapping(value = "/survey/survey.ok")
	public String processStep2(HttpServletRequest req) {
		
		String[] img = req.getParameterValues("ck"); 			//체크박스는 중복값도 될 수 있기에 중복값을 처리할수 있게
		//배열이여서 여러개가 담아질 수 있다.
		
		if(img == null) {
			return "surveyForm";
		} else {
			req.setAttribute("img", img);				//img에 img을 담아서 전송
			return "surveySubmitted";
		}
		
	}
	
}
