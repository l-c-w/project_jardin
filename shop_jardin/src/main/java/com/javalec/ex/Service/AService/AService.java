package com.javalec.ex.Service.AService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface AService {

	void execute(HttpServletRequest request,SqlSession sqlSession, Model model);
}
