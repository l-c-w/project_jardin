package com.javalec.ex.Service.PayService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface PayService {

	void execute(SqlSession sqlSession, Model model);
}
