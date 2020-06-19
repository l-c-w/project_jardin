package com.javalec.ex.Service.MService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface MService {

	void execute(Model model, HttpServletRequest request, SqlSession sqlssion);
	
	
	

}
