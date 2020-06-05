package com.javalec.ex.Service.MainService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface MainService {

	void execute(HttpServletRequest request,SqlSession sqlSession, Model model);
}
