package com.javalec.ex.Service.CUService;


import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;

public class OOFnqList {
	
	public void list(SqlSession sqlsession, Model model, 
			String nowPage, String cntPerPage, PagingDto pagedto, String id){
		
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
	

}
