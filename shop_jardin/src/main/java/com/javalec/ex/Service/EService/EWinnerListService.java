package com.javalec.ex.Service.EService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Winner_joinersDto;
import com.javalec.ex.Service.CService.CService;

public class EWinnerListService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EWinnerListService--------------------");

		int page = 0;
		int listcount = 0;
		String temp = "";
		
		String opt = request.getParameter("opt"); // 전체 제목 내용
		String searchFlag = request.getParameter("searchFlag"); // 검색체크
		String search = request.getParameter("search"); // 검색어	  where btitle like '%게%'
		System.out.println("search value : " + search);
		if(opt == null) {
			opt = "";
		}
		if(search == null) {
			search = "";
		}
		
		temp = request.getParameter("page");
		System.out.println("temp : " + temp);

		if (temp == null) {
			page = 1; // 최초 기본 1페이지 세팅
		} else {
			page = Integer.parseInt(temp);
		}
		System.out.println("page : " + page);

		int limit = 10; // 1page = 게시글 10개
//		String searchFlag = null; // 검색체크	//였지만 검색기능을 빼기로 했기 때문에 쓰지않는기능이다
//		System.out.println("searchFlag : " + searchFlag);

//		if(request.getParameter("page") != null) {
//			page = Integer.parseInt(request.getParameter("page"));
//		}

		EDao dao = sqlSession.getMapper(EDao.class);

		// 페이지별 리스트 개수 가져오기
		ArrayList<Winner_joinersDto> list = new ArrayList<Winner_joinersDto>();
		int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10
		
		switch (opt) {
		case "":
			list = dao.winner_list(startrow, endrow, search);
			listcount = dao.getWinnerCount(search);
			break;
		case "all":
			list = dao.winner_listAll(startrow, endrow, search);
			listcount = dao.getWinnerCountAll(search);
			break;
		case "tit":
			list = dao.winner_listTit(startrow, endrow, search);
			listcount = dao.getWinnerCountTit(search);
			break;
		case "con":
			list = dao.winner_listCon(startrow, endrow, search);
			listcount = dao.getWinnerCountCon(search);
			break;
		default:
			break;
		}


		// 최대 페이지 수
		int maxpage = (int) ((double) listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		model.addAttribute("winner_list", list);

		model.addAttribute("listcount", listcount);
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
		

		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);
		System.out.println("searchFlag : " + searchFlag);

//		switch (page) {
//		case 1:
//			searchFlag = null;
//			break;
//		default:
//			searchFlag = "1";
//			model.addAttribute("searchFlag", searchFlag);
//			break;
//		}// 검색했을 때 페이지를 넘겨도 검색어를 유지시키는 기능	//이었지만 검색기능을 빼기로 했기 때문에 쓰지않는기능이다

		

	}

}
