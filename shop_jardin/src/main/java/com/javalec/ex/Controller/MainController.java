package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Service.MainService.MainListService;
import com.javalec.ex.Service.MainService.MainService;

@Controller
@RequestMapping("main")
public class MainController {
	
	 @Autowired
	 private SqlSession sqlSession;
	 
	 MainService ms;
	 
	 @RequestMapping("/main")
	 public String main(HttpServletRequest request,Model model) {
		 ms = new MainListService();
		 ms.execute(request, sqlSession, model);
		 return "main/main";
	 }

}
