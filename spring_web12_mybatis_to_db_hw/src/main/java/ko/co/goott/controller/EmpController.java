package ko.co.goott.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ko.co.goott.dao.DAO;
import ko.co.goott.dto.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired
	DAO dao;
	
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/empList")
	public String list(Model model) {
		
		List<EmpDTO> list = dao.selectAll();
		
		model.addAttribute("list", list);
		
		return "list";
		
	}
	
	@RequestMapping(value = "/insert")
	public String processStep2() {
		return "insertForm";
	}
	
	@RequestMapping(value = "/insertOk")
	public String processStep3(@ModelAttribute EmpDTO empDTO) {
	
		dao.insertOne(empDTO);
		
		return "redirect:/empList";
	}
	
	
}
