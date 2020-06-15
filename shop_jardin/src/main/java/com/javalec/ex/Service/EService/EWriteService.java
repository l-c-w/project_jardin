package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EWriteService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EWriteService--------------------");

		// EDelCommentService
		// 댓글 작성
		String e_code = request.getParameter("e_code");
		String requestUser = request.getParameter("requestUser"); // 등록 버튼을 누른 유저(세션)
		String comment_content = request.getParameter("comment_content"); // 댓글 내용
		String pw = request.getParameter("pw"); // 댓글 비밀번호
		int page = Integer.parseInt(request.getParameter("page"));

		// log
		System.out.println("EWriteService - e_code : " + e_code);
		System.out.println("requestUser : " + requestUser);
		System.out.println("page : " + page);

		if (requestUser == null) {
			// 로그인 되어있지 않음
			System.out.println("로그인 되어있지 않습니다.");
		}else {
			EDao dao = sqlSession.getMapper(EDao.class);
			dao.eCommentWite(e_code, requestUser, comment_content);

			// EViewService
			eventMethod eMethod = new eventMethod();
			eMethod.eventView(request, sqlSession, model, e_code, page);
			

		} // else

	}

	

}//class