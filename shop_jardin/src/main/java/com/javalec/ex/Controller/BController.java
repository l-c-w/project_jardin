package com.javalec.ex.Controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;
import com.javalec.ex.Service.CService.BSearch;

@Controller
public class BController {

	@Autowired
	private SqlSession sqlsession;

	@RequestMapping("/customer/notice_search")
	public String notice_search(Model model, PagingDto pagedto,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "searchType", required = false) String searchType,
			@RequestParam(value = "keyword", required = false) String keyword){
		
		BSearch bs = new BSearch();
		
		try {
			bs.notice_search(sqlsession, model, pagedto, nowPage, cntPerPage, searchType, keyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "/customer/notice_list";

	}
	
	
	
	
	
//	@RequestMapping("/customer/notice_search")
//	public String notice_search(Model model, PagingDto pagedto,
//			@RequestParam(value = "nowPage", required = false) String nowPage,
//			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
//			@RequestParam(value = "searchType", required = false) String searchType,
//			@RequestParam(value = "keyword", required = false) String keyword) throws Exception {
//
//
//		SearchingDto search = new SearchingDto();
//
//		search.setSearchType(searchType);
//
//		search.setKeyword(keyword);
//		
//		BDao bdao = sqlsession.getMapper(BDao.class);
//		
//		ArrayList<NoticeDto> ndtos = bdao.getBoardList(search);
//		
//		int total = bdao.getBoardListCnt(search);
//
//		
//		if (nowPage == null && cntPerPage == null) {
//			nowPage = "1";
//			cntPerPage = "10";
//		}
//
//		else if (nowPage == null) {
//			nowPage = "1";
//		}
//
//		else if (cntPerPage == null) {
//			cntPerPage = "10";
//		}
//
//		pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
//
//		model.addAttribute("paging", pagedto);
//
//		model.addAttribute("viewAll", ndtos);
//
//		return "/customer/notice_list";
//
//	}
//	
//	
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	

}
