package com.javalec.ex.Service.CService;

import java.util.ArrayList;


import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.NoticeDto;

public class BSearch {
	
	public void notice_search(SqlSession sqlsession, Model model, PagingDto pagedto,
			 String nowPage,
			 String cntPerPage,
		     String searchType,
			 String keyword) throws Exception {


		SearchingDto search = new SearchingDto();

		search.setSearchType(searchType);

		search.setKeyword(keyword);
		
		BDao bdao = sqlsession.getMapper(BDao.class);
		
		ArrayList<NoticeDto> ndtos = bdao.getBoardList(search);
		
		int total = bdao.getBoardListCnt(search);

		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		}

		else if (nowPage == null) {
			nowPage = "1";
		}

		else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		model.addAttribute("paging", pagedto);

		model.addAttribute("viewAll", ndtos);

	}
	

}
