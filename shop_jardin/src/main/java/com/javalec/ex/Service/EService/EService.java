package com.javalec.ex.Service.EService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface EService {

	void execute(SqlSession sqlSession, Model model);

}
