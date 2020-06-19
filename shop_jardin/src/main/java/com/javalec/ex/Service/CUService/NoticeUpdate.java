package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.MDto.NoticeDto;

public class NoticeUpdate {

	
	public void n_update(SqlSession sqlsession, Model model, String n_title, String n_content, String n_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.n_update(n_title, n_content, n_num);
		
	}
	
	
	
	public void n_update_view(SqlSession sqlsession, Model model, String n_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		NoticeDto ndto = cdao.n_view(n_num);
		
		model.addAttribute("ndto", ndto);
		
	}
	
	

}
