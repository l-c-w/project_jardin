package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EDelCommentService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EDelCommentService--------------------");

		// EDelCommentService
		// 댓글 삭제
		String ec_num = request.getParameter("ec_num");
		String e_code = request.getParameter("e_code");
		String requestUser = request.getParameter("requestUser"); // 삭제 버튼을 누른 유저(세션)
		String authUser = request.getParameter("authUser"); // 댓글 작성자
		int page = Integer.parseInt(request.getParameter("page"));

		// log
		System.out.println("EDelCommentService - ec_num : " + ec_num);
		System.out.println("requestUser : " + requestUser);
		System.out.println("authUser : " + authUser);
		System.out.println("page : " + page);
		
		
		if (authUser == null) {
			// 잘못된 접근
			System.out.println("유효하지 않은 요청입니다. 1");
		} else if (!(requestUser.equals(authUser))) {
			// 작성자의 아이디와 일치해야함
			System.out.println("유효하지 않은 요청입니다. 2");
		} else {
			EDao dao = sqlSession.getMapper(EDao.class);
			
			page = page - 1; // delete만 페이지 -1 할당 : 맨 뒷 페이지에서 하나만 남은 댓글을 삭제할 경우에 삭제 한 후 아무것도 표시되지 않는 문제점 때문
			System.out.println("page = page - 1 : " + page);
			dao.eDeleteComment(ec_num);

			// EViewService
			eventMethod eMethod = new eventMethod();
			eMethod.eventView(request, sqlSession, model, e_code, page);
			

		} // else

	}

}
