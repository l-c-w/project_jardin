package com.javalec.ex.Service.EService;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EViewService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EViewService--------------------");
		
		EventDto edto = new EventDto(); // 본문 dto
		EventDto edtoNext = new EventDto(); // 다음글 dto
		EventDto edtoPrev = new EventDto(); // 이전글 dto
		ArrayList<Event_commentDto> list = new ArrayList<Event_commentDto>(); // 댓글 dto
		EDao dao = sqlSession.getMapper(EDao.class);
		String tempPage = request.getParameter("page");	//	파라미터는 String으로 가져오기 때문에 임시로 만든 변수
		String e_code = request.getParameter("e_code");
		int page = 0;
		int limit = 5; // ex) limit = 10 -> eventMethod의 eventView()도 바꿔야함
		
		// page = Integer.parseInt(tempPage);	//	파라미터로 가져온 값을 변환하여 그대로 할당
		//	<a href="event_view?e_code=${dto.e_code }&page=1"> 이기 때문에 무조건 페이지는 1이다
		
		// EViewService
		edto = dao.event_view(e_code);
		model.addAttribute("event_view", edto);	
		
		if(tempPage == null) {
			page = 1;
		}else {
			page = Integer.parseInt(tempPage);
		}
		
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
		model.addAttribute("e_code", e_code);
		model.addAttribute("page", page);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("event_comment", list);	//	댓글리스트
		model.addAttribute("comment_listcount", listcount);	//	댓글 갯수
		
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
			System.out.println("getEc_num : " + dto.getEc_num());
			System.out.println("getEc_wdate : " + dto.getEc_wdate());
			System.out.println("getEc_content : " + dto.getEc_content());
		}		
		

	}

}