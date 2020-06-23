package com.javalec.ex.Service.AMService;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.MDto.NoticeDto;


@Service
public class AMServiceImpl implements AMService {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	@Override
	public ArrayList<Member_Dto> admin_member(Model model) {
		// TODO Auto-generated method stub

		MDao dao = sqlsession.getMapper(MDao.class);

		ArrayList<Member_Dto> mdtos = dao.m_list();

		model.addAttribute("m_count", dao.m_count());

		model.addAttribute("m_list", mdtos);
		
		return mdtos;
		
	}


	// 공지사항 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	@Override
	public void a_notice_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto) {
		
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
		
	}


	
	@Override
	public void a_notice_view(Model model, String num) {
		
		CuDao cuao = sqlsession.getMapper(CuDao.class);
		
		cuao.n_upHit(num);
		
		NoticeDto ndto1 = cuao.n_view(num);
		
		NoticeDto ndto_n = cuao.n_next(num);
		
		NoticeDto ndto_p = cuao.n_pre(num);
		
		model.addAttribute("ndto", ndto1);
		
		model.addAttribute("ndto_n", ndto_n);
		
		model.addAttribute("ndto_p", ndto_p);
		
		
	}
	
	
	
	
	

}
