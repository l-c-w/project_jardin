package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

@org.springframework.stereotype.Controller

public class MController {
	
	
	
		@Autowired
		private SqlSession sqlsession;
		
		@RequestMapping("register_ok") 
		
		public String register_ok(HttpServletRequest request, Member_Dto mdto, Model model) {
		
		MDao dao = sqlsession.getMapper(MDao.class); 
		
		dao.register();
		
		return "member/step04";
		
		}
		
		
		
		
		

}
