package com.javalec.ex.Service.CUService;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.FnqDto;


@Service
public class CuServiceImpl implements CuService {
	
	
	@Inject
	SqlSession sqlsession;
	

	@Override
	public void notice_search(Model model, PagingDto pagedto, String nowPage, String cntPerPage,
			String searchType, String keyword) throws Exception {

		SearchingDto search = new SearchingDto();

		search.setSearchType(searchType);

		search.setKeyword(keyword);

		CuDao cdao = sqlsession.getMapper(CuDao.class);

		ArrayList<FnqDto> ndtos = cdao.f_getBoardList(search);

		int total = cdao.f_getBoardListCnt(search);

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
