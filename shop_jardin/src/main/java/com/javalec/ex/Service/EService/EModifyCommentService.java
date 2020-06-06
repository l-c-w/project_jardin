package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EModifyCommentService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		// EModifyCommentService
		// 댓글 수정
		String e_code = request.getParameter("e_code");
		String content = request.getParameter("content");

		// log
		System.out.println("EModifyCommentService - e_code : " + e_code);
		System.out.println("EModifyCommentService - content : " + content);

		EDao dao = sqlSession.getMapper(EDao.class);
		dao.eModify_comment(e_code, content);
		
		
		// EViewService
		// 변수 선언
		EventDto edto = new EventDto(); // 본문 dto
		ArrayList<Event_commentDto> list = new ArrayList<Event_commentDto>(); // 댓글 dto
		int page = 1; // 페이징 : 무조건 1페이지로 가게 한다
		int limit = 3; // 1page = 게시글 10개

		// EViewService
		edto = dao.event_view(e_code);
		model.addAttribute("event_view", edto);


		// 페이지별 리스트 개수 가져오기
		int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10

		// 전체 게시글 count(*)
		int listcount = dao.getCommentCount(e_code); // listcount -> 20
		// 최대 페이지 수
		int maxpage = (int) ((double) listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		// ECommentService
		list = dao.event_comment(e_code, startrow, endrow);

		// model
		model.addAttribute("event_comment", list);

		model.addAttribute("comment_listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("e_code", e_code);

		// log
		System.out.println("e_code : " + e_code);
		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);

		// ------------------------------------------------------------
		for (int i = 0; i < list.size(); i++) {
			Event_commentDto dto = (Event_commentDto) list.get(i);
			System.out.println("Event_commentDto : " + dto.getEc_num());
			System.out.println("Event_commentDto : " + dto.getEc_wdate());
			System.out.println("Event_commentDto : " + dto.getEc_content());
		}
	}

}