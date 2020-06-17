package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EFinModifyCommentService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EModifyCommentService--------------------");

		// EModifyCommentService
		// 댓글 수정
		String ec_num = request.getParameter("ec_num");
		String e_code = request.getParameter("e_code");
		String content = request.getParameter("content");
		String requestUser = request.getParameter("requestUser"); // 수정 버튼을 누른 유저(세션)
		String authUser = request.getParameter("authUser"); // 댓글 작성자
		int page = Integer.parseInt(request.getParameter("page"));

		// log
		System.out.println("EModifyCommentService - ec_num : " + ec_num);
		System.out.println("EModifyCommentService - content : " + content);
		System.out.println("requestUser : " + requestUser);
		System.out.println("authUser : " + authUser);
		System.out.println("page : " + page);

		if (authUser == null) {
			//잘못된 접근
			System.out.println("유효하지 않은 요청입니다. 1");
		}else if(!(requestUser.equals(authUser))) {
			//작성자의 아이디와 일치해야함
			System.out.println("유효하지 않은 요청입니다. 2");
		}else {
			EDao dao = sqlSession.getMapper(EDao.class);
			dao.eModify_comment(ec_num, content);

			// EViewService
			eventMethod eMethod = new eventMethod();
			eMethod.fin_eventView(request, sqlSession, model, e_code, page);
			
		}//else
		
		
	}//execute
	

}//class