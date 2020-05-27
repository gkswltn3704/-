package kr.co.goott.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	
	@RequestMapping("/survey/survey.choose")
	public String processStep1() {
		return "surveyForm";
	}
	
	@RequestMapping("/survey/survey.ok")
	public String processStep2(HttpServletRequest req ) {
		
		req.setAttribute("img", req.getAttribute("iu"));
		req.setAttribute("img", req.getAttribute("gd"));
		
		return "surveySubmitted";
	}
	
}
