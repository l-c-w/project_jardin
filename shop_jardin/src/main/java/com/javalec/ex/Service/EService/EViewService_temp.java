package com.javalec.ex.Service.EService;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EViewService_temp implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EViewService--------------------");
		
		// 변수 선언
		EventDto edto = new EventDto(); // 본문 dto
		EventDto edtoNext = new EventDto(); // 다음글 dto
		EventDto edtoPrev = new EventDto(); // 이전글 dto
		ArrayList<Event_commentDto> list = new ArrayList<Event_commentDto>(); // 댓글 dto
		EDao dao = sqlSession.getMapper(EDao.class);
		String e_code = request.getParameter("e_code");
		String temp = ""; // 페이징 임시변수 & 리퀘스트를 비교해서 page변수에 값을 할당하기 위함
		temp = request.getParameter("page"); // 페이징 임시변수
		int page = 0; // 페이징 임시변수
		int limit = 3; // 1page = 게시글 10개

		// EViewService
		edto = dao.event_view(e_code);

		if (temp == null) { // 페이징 임시변수 & 리퀘스트를 비교해서 page변수에 값을 할당하기 위함
			page = 1; // 최초 기본 1페이지 세팅
		} else {
			page = Integer.parseInt(temp); // 리퀘스트에 값이 있으면 page변수에 리퀘스트 값을 할당
		}

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
		// EViewService 끝
		
		// eNextView, ePrevView
		edtoNext = dao.eNextView(e_code);
		edtoPrev = dao.ePrevView(e_code);

		// ECommentService
		list = dao.event_comment(e_code, startrow, endrow);
				

		// model
		model.addAttribute("event_view", edto);
		model.addAttribute("event_comment", list);
		model.addAttribute("comment_listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("e_code", e_code);		
		
		if(edtoNext == null) {
			System.out.println("edtoNext : 데이터가 없습니다.");
		}else {
			model.addAttribute("edtoNext", edtoNext);
		}
		if(edtoPrev == null) {
			System.out.println("edtoPrev : 데이터가 없습니다.");
		}else {
			model.addAttribute("edtoPrev", edtoPrev);
		}

		
		// log
		System.out.println("e_code : " + e_code);
		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);
//		System.out.println("edtoPrev : " + edtoPrev.getE_code());
//		System.out.println("edtoPrev : " + edtoPrev.getE_title());

		// ------------------------------------------------------------
		for (int i = 0; i < list.size(); i++) {
			Event_commentDto dto = (Event_commentDto) list.get(i);
			System.out.println("Event_commentDto : " + dto.getEc_num());
			System.out.println("Event_commentDto : " + dto.getEc_wdate());
			System.out.println("Event_commentDto : " + dto.getEc_content());
		}

	}

}