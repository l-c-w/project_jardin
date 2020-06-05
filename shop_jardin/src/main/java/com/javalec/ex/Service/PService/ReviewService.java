package com.javalec.ex.Service.PService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;

public class ReviewService implements PService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		PDao dao = sqlSession.getMapper(PDao.class);
		
	}

}
