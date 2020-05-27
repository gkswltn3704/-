package spring_web08_db;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DaoController {
	
	@RequestMapping(value = "list.do")
	public ModelAndView show() {
		
		return new ModelAndView("list", "list", "DB에서 전체조회수 수행함");
	}
	
	
	@RequestMapping(value = "view.do")
	public String view(HttpServletRequest req) {
		String data = req.getParameter("no");
		// int deptno = Integer.parseInt(data);
		// dao.selectOne(deptno); 	=> 조회 후 결과 리턴
		
		req.setAttribute("dataOne", data);			//dataOne에 data을 넣어서 보낸다!
		
		return "view";
	}
	
	@RequestMapping(value = "insert.do")
	public ModelAndView insert() {
		return new ModelAndView("insertData", "vo", "DeptDTO");
	}
	
	
	
	
	
	
	
}
