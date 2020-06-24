package com.javalec.ex.Service.CUService;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;
import com.javalec.ex.Dto.MDto.Oo_fnqDto;


@Service
public class CuServiceImpl implements CuService {
	
	
	@Autowired
	SqlSession sqlsession;
	
	
	
	// 공지사항 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	@Override
	public void n_search(Model model, PagingDto pagedto, String nowPage, String cntPerPage, String searchType,
			String keyword) throws Exception {
		
		SearchingDto search = new SearchingDto();

		search.setSearchType(searchType);

		search.setKeyword(keyword);
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		ArrayList<NoticeDto> ndtos = cdao.n_getBoardList(search);
		
		int total = cdao.n_getBoardListCnt(search);

		
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
	
	

	@Override
	public void n_update(Model model, String n_title, String n_content, String n_num) {

		CuDao cdao = sqlsession.getMapper(CuDao.class);

		cdao.n_update(n_title, n_content, n_num);

	}

	

	@Override
	public void n_update_view(Model model, String n_num) {

		CuDao cdao = sqlsession.getMapper(CuDao.class);

		NoticeDto ndto = cdao.n_view(n_num);

		model.addAttribute("ndto", ndto);

	}


	
	@Override
	public void n_write(Model model, String n_title, String n_content, int n_hit) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.n_write(n_title, n_content, n_hit);
		
	}

	
	
	
	// faq ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	
	

	@Override
	public void f_view(String f_num, Model model) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		FnqDto fdto = cdao.f_view(f_num);
		
		model.addAttribute("fdto",fdto);
		
	}
	
	
	
	@Override
	public void f_search(Model model, PagingDto pagedto, String nowPage, String cntPerPage, String searchType,
			String keyword) throws Exception {
		
		
		SearchingDto search = new SearchingDto();

		search.setSearchType(searchType);

		search.setKeyword(keyword);
		
		CuDao cudao = sqlsession.getMapper(CuDao.class);
		
		ArrayList<FnqDto> fdtos = cudao.f_getBoardList(search);
		
		int total = cudao.f_getBoardListCnt(search);
		
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

		model.addAttribute("viewAll", fdtos);
		
		
		
	}
	
	
	

	@Override
	public void f_type_paging(Model model, PagingDto pagedto, String nowPage, String cntPerPage, String f_type) throws Exception {
		
        CuDao cudao = sqlsession.getMapper(CuDao.class);
		
        ArrayList<FnqDto> fdtos = cudao.f_type_list(f_type);
		
		int total = cudao.f_type_list_count(f_type);
		
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

		model.addAttribute("f_type_list", fdtos);
		
	}

	
	
	
	
	// 1:1문의 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	


	@Override
	public void o_delete(String oo_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);

		cdao.oo_delete(oo_num);
		
	}


	
	@Override
	public void o_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto, String id) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		int total = cdao.o_countBoard(id);
		
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
		
		pagedto.setId(id);
		
		model.addAttribute("paging", pagedto);
			
		model.addAttribute("viewAll", cdao.o_selectBoard(pagedto));
		
	}


	@Override
	public void o_update(String oo_type, String oo_title, String oo_content, String oo_num) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.oo_update(oo_type, oo_title, oo_content, oo_num);
		
	}


	@Override
	public void o_view(Model model, String oo_num) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		Oo_fnqDto odto = cdao.oo_view(oo_num);
		
		model.addAttribute("oo_view", odto);
		
		
	}


	@Override
	public void oo_write(HttpSession session, Model model, String oo_type, String oo_title, String oo_content) {
		
        String id = (String) session.getAttribute("session_mem");
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.oo_write(id, oo_type, oo_title, oo_content);
		
		
	}













	
	
	

}
