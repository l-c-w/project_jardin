package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.NoticeDto;

@Controller
public class CuController {
	

	@Autowired
	private SqlSession sqlsession;
	

	@RequestMapping("/customer/notice_list")
	public String notice_list(Model model,
			PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		
		CuDao cuao = sqlsession.getMapper(CuDao.class);
		
		 int total = cuao.n_countBoard();
			
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
				
			model.addAttribute("viewAll", cuao.n_selectBoard(pagedto) );
		
		return "/customer/notice_list";
	}
	
	
	
	
	@RequestMapping("/customer/notice_view")
	public String notice_view(Model model, HttpServletRequest request) {
		
		String num = request.getParameter("n_num");
		
		CuDao cuao = sqlsession.getMapper(CuDao.class);
		
		NoticeDto ndto1 = cuao.n_view(num);
		
		NoticeDto ndto_n = cuao.n_next(num);
		
		NoticeDto ndto_p = cuao.n_pre(num);
		
		model.addAttribute("ndto", ndto1);
		
		model.addAttribute("ndto_n", ndto_n);
		
		model.addAttribute("ndto_p", ndto_p);
		
		return "/customer/notice_view";
	}
	
	
	
	@RequestMapping("/customer/faq")
	public String fag() {
		return "/customer/faq";
	}
	
	
	@RequestMapping("/customer/guide")
	public String guide() {
		return "/customer/guide";
	}
	
	
	@RequestMapping("/customer/inquiry")
	public String inquiry() {
		return "/customer/inquiry";
	}
	
	
	
	
	
	
	
	
	
}
