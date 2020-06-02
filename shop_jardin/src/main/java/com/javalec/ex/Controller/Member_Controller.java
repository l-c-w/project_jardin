package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.IDao;
import com.javalec.ex.Dto.Member_Dto;

@org.springframework.stereotype.Controller

public class Member_Controller {
	
	
	
		@Autowired
		private SqlSession sqlsession;
		
		@RequestMapping("register_ok") 
		
		public String register_ok(HttpServletRequest request, Member_Dto mdto, Model model) {
		
		IDao dao = sqlsession.getMapper(IDao.class); 
		
		dao.register();
		
		return "member/step04";
		
		}
		
		
		
		
		

}
