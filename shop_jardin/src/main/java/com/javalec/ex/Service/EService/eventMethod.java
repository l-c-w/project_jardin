package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class eventMethod {

	public void eventView(HttpServletRequest request, SqlSession sqlSession, Model model, String e_code, int page) {

		System.out.println("--------------------class eventView--------------------");

		EventDto edto = new EventDto(); // 본문 dto
		EventDto edtoNext = new EventDto(); // 다음글 dto
		EventDto edtoPrev = new EventDto(); // 이전글 dto
		ArrayList<Event_commentDto> list = new ArrayList<Event_commentDto>(); // 댓글 dto
		EDao dao = sqlSession.getMapper(EDao.class);
		int limit = 3; // 1page = 게시글 10개

		// EViewService
		edto = dao.event_view(e_code);
		model.addAttribute("event_view", edto);
		

		// 전체 게시글 count(*)
		int listcount = dao.getCommentCount(e_code); // listcount -> 20
		// 최대 페이지 수
		int maxpage = (int) ((double) listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		
		if(page > maxpage) {
			page -= 1; // 맨 뒷 페이지에서 하나만 남은 댓글을 삭제할 경우에 삭제 한 후 아무것도 표시되지 않는 문제점 때문
		}
		
		// 페이지별 리스트 개수 가져오기
		int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10

		// 처음 페이지
		int startpage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 =
																			// 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		// ECommentService
		list = dao.event_comment(e_code, startrow, endrow);

		// eNextView, ePrevView
		edtoNext = dao.eNextView(e_code);
		edtoPrev = dao.ePrevView(e_code);

		// model
		model.addAttribute("event_comment", list);
		model.addAttribute("comment_listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("e_code", e_code);

		if (edtoNext == null) {
			System.out.println("edtoNext : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoNext", edtoNext);
		}
		if (edtoPrev == null) {
			System.out.println("edtoPrev : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoPrev", edtoPrev);
		}

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
	}// eventView

	public void fin_eventView(HttpServletRequest request, SqlSession sqlSession, Model model, String e_code, int page) {

		System.out.println("--------------------class fin_eventView--------------------");

		EventDto edto = new EventDto(); // 본문 dto
		EventDto edtoNext = new EventDto(); // 다음글 dto
		EventDto edtoPrev = new EventDto(); // 이전글 dto
		ArrayList<Event_commentDto> list = new ArrayList<Event_commentDto>(); // 댓글 dto
		EDao dao = sqlSession.getMapper(EDao.class);
		int limit = 3; // 1page = 게시글 10개

		// EViewService
		edto = dao.event_view(e_code);
		model.addAttribute("event_view", edto);

		// 전체 게시글 count(*)
		int listcount = dao.getCommentCount(e_code); // listcount -> 20
		// 최대 페이지 수
		int maxpage = (int) ((double) listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		
		if(page > maxpage) {
			page -= 1; // 맨 뒷 페이지에서 하나만 남은 댓글을 삭제할 경우에 삭제 한 후 아무것도 표시되지 않는 문제점 때문
		}
		
		// 페이지별 리스트 개수 가져오기
		int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10

		// 처음 페이지
		int startpage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 =
																			// 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		// ECommentService
		list = dao.event_comment(e_code, startrow, endrow);

		// eNextView, ePrevView
		edtoNext = dao.eNextView(e_code);
		edtoPrev = dao.ePrevView(e_code);

		// model
		model.addAttribute("event_comment", list);

		model.addAttribute("comment_listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("e_code", e_code);
		
		if (edtoNext == null) {
			System.out.println("edtoNext : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoNext", edtoNext);
		}
		if (edtoPrev == null) {
			System.out.println("edtoPrev : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoPrev", edtoPrev);
		}

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
	}// eventView

}
