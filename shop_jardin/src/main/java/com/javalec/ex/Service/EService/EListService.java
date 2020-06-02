package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.CService.CService;

public class EListService implements EService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		HttpServletRequest request;
		
		System.out.println("--------------------EListService--------------------");
		
		int page = 1;		// 최초 기본 1페이지 세팅
		int limit = 10;		// 1page = 게시글 10개
		String opt = request.getParameter("opt"); // 전체 제목 내용
		String search = request.getParameter("search"); // 검색어	  where btitle like '%게%'
		System.out.println("search value : " + search);
		String searchFlag = request.getParameter("searchFlag"); // 검색체크
		System.out.println("searchFlag : " + searchFlag);
		if(opt == null) {
			opt = "";
		}
		if(search == null) {
			search = "";
		}
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		EDao dao = sqlSession.getMapper(EDao.class);
		// 페이지별 리스트 개수 가져오기
		ArrayList<EventDto> list = new ArrayList<EventDto>();
		list = dao.event_list(page, limit, opt, search);
		// 전체 게시글 count(*)
		int listcount = dao.getListCount(opt, search); // listcount -> 20 
		// 최대 페이지 수
		int maxpage = (int)((double)listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1; //1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if(endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;
		
		request.setAttribute("list", dtos);
		
		request.setAttribute("listcount", listcount);
		request.setAttribute("page", page);
		request.setAttribute("maxpage", maxpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);

		if(search != null) {
			searchFlag = "1";
			request.setAttribute("searchFlag", searchFlag);
			request.setAttribute("opt", opt);
			request.setAttribute("search", search);
		}
		
		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);
		
		
		
		
		
		//------------------------------------------------------------
		EDao dao = sqlSession.getMapper(EDao.class);
		ArrayList<EventDto> list = new ArrayList<EventDto>();
		list = dao.event_list();
		for(int i=0; i<list.size(); i++) {
			EventDto dto = (EventDto)list.get(i);
			System.out.println("event_list : " + dto.getE_code());
			System.out.println("event_list : " + dto.getE_title());
			System.out.println("event_list : " + dto.getE_content());
			System.out.println("event_list : " + dto.getE_start());
			System.out.println("event_list : " + dto.getE_end());
		}
		
		model.addAttribute("event_list", list);
		
	}



}
