package com.javalec.ex.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.IDao;

@org.springframework.stereotype.Controller
public class Controller {
	
		@Autowired
		private SqlSession sqlsession;

		
		@RequestMapping("register_ok") 
		public String register_ok(Model model) {
		
		IDao dao = sqlsession.getMapper(IDao.class); 
		dao.register();
		
		
		return "main/main";}
		
		
		

}
