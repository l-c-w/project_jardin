package com.javalec.ex.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AController {
	
	@Autowired
	private SqlSession sqlsession;
	
	
	
	@RequestMapping("admin/admin_main")
	public String admin_main(Model model) {
		return "admin/admin_main";
	}
	
	
	
	@RequestMapping("admin/admin_mlist")
	public String admin_mlist(Model model) {
		return "admin/admin_mlist";
	}
	
	
	
	
	
	
	
	

}
