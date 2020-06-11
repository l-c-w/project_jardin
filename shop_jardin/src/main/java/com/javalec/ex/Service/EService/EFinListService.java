package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.CService.CService;

public class EFinListService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		System.out.println("--------------------EFinListService--------------------");

		int page = 0;
		int listcount = 0;
		String temp = "";
		
		String opt = request.getParameter("opt"); // 전체 제목 내용
		String searchFlag = request.getParameter("searchFlag"); // 검색체크
		String search = request.getParameter("search"); // 검색어	
		System.out.println("search value : " + search);
		if(opt == null) {
			opt = "";
		}
		if(search == null) {
			search = "";
		}
		
		temp = request.getParameter("page");
		System.out.println("temp : " + temp);
		
		if(temp == null) {
			page = 1;		// 최초 기본 1페이지 세팅
		}else {
			page = Integer.parseInt(temp);
		}
		System.out.println("page : " + page);
		
		int limit = 3;
		
		EDao dao = sqlSession.getMapper(EDao.class);
		
		// 페이지별 리스트 개수 가져오기
		ArrayList<EventDto> list = new ArrayList<EventDto>();
		int startrow = (page - 1) * limit + 1;	// (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1;	//	1 + 10 - 1 = 10
		
		switch (opt) {
		case "":
			list = dao.fin_event_list(startrow, endrow, search);
			listcount = dao.getFinListCount(search);			
			break;
		case "all":
			list = dao.fin_event_listAll(startrow, endrow, search);
			listcount = dao.getFinListCountAll(search);
			break;
		case "tit":
			list = dao.fin_event_listTit(startrow, endrow, search);
			listcount = dao.getFinListCountTit(search);
			break;
		case "con":
			list = dao.fin_event_listTit(startrow, endrow, search);
			listcount = dao.getFinListCountCon(search);
			break;
		default:
			break;
		}
		
		
						
		// 최대 페이지 수
		int maxpage = (int)((double)listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1; //1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if(endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;
		
		
		model.addAttribute("fin_event_list", list);
		
		model.addAttribute("fin_listcount", listcount);
		model.addAttribute("page", page);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);

		if(search != null) {
			searchFlag = "1";
			request.setAttribute("searchFlag", searchFlag);
			request.setAttribute("opt", opt);
			request.setAttribute("search", search);
		}
		
		System.out.println("fin_listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);		
		
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
