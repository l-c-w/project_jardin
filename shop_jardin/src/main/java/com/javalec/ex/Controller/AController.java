package com.javalec.ex.Controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

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
		
		MDao dao = sqlsession.getMapper(MDao.class);
		
		ArrayList<Member_Dto> mdtos = dao.m_list();
		
		model.addAttribute("m_count", dao.m_count());
		
		model.addAttribute("m_list", mdtos);
		
		return "admin/admin_mlist";
	}
	
	
	


	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
