package com.javalec.ex.Service.EService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EModifyCommentController implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		String e_code = request.getParameter("e_code");
		String content = request.getParameter("content");
		
		EDao dao = sqlSession.getMapper(EDao.class);		
		Event_commentDto dto = dao.eModify_comment(e_code, content);
	}

}
