package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.CService.CService;

public class EListService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		System.out.println("--------------------EListService--------------------");

		int page = 0;
		
		String temp = "";
		
		System.out.println("EListService - request : " + request);
		
		temp = request.getParameter("page");
		System.out.println("temp : " + temp);
		
		if(temp == null) {
			page = 1;		// 최초 기본 1페이지 세팅
		}else {
			page = Integer.parseInt(temp);
		}
//		
		
		int limit = 2;		// 1page = 게시글 10개
//		String searchFlag = null; // 검색체크	//였지만 검색기능을 빼기로 했기 때문에 쓰지않는기능이다
//		System.out.println("searchFlag : " + searchFlag);
		
//		if(request.getParameter("page") != null) {
//			page = Integer.parseInt(request.getParameter("page"));
//		}
		
		EDao dao = sqlSession.getMapper(EDao.class);
		
		// 페이지별 리스트 개수 가져오기
		ArrayList<EventDto> list = new ArrayList<EventDto>();
		int startrow = (page - 1) * limit + 1;	// (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1;	//	1 + 10 - 1 = 10
		
		list = dao.event_list(startrow, endrow);
		// 전체 게시글 count(*)
		int listcount = dao.getListCount(); // listcount -> 20 
		// 최대 페이지 수
		int maxpage = (int)((double)listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1; //1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if(endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;
		
		
		model.addAttribute("event_list", list);
		
		model.addAttribute("listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);

		
		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);
		
//		switch (page) {
//		case 1:
//			searchFlag = null;
//			break;
//		default:
//			searchFlag = "1";
//			model.addAttribute("searchFlag", searchFlag);
//			break;
//		}// 검색했을 때 페이지를 넘겨도 검색어를 유지시키는 기능	//이었지만 검색기능을 빼기로 했기 때문에 쓰지않는기능이다
		
		
		//------------------------------------------------------------
		for(int i=0; i<list.size(); i++) {
			EventDto dto = (EventDto)list.get(i);
			System.out.println("event_list : " + dto.getE_code());
			System.out.println("event_list : " + dto.getE_title());
			System.out.println("event_list : " + dto.getE_content());
			System.out.println("event_list : " + dto.getE_start());
			System.out.println("event_list : " + dto.getE_end());
		}
		
		
	}



}
