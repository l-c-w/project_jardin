package com.javalec.ex.Service.CUService;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;


public class OOFnqWrite {
	
	
	public void oo_write(
			SqlSession sqlsession, 
			HttpSession session,
			Model model, 
			String oo_type,
			String oo_title,
			String oo_content) {
		
		
		String id = (String) session.getAttribute("session_mem");
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.oo_write(id, oo_type, oo_title, oo_content);
		
		
	}
	
	
	
	

}
