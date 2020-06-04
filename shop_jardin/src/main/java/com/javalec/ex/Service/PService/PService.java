package com.javalec.ex.Service.PService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface PService {

	void execute(HttpServletRequest request,SqlSession sqlSession, Model model);

}
