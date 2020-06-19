package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.MDto.FnqDto;

public class FnqView {

	
	public void f_view(SqlSession sqlsession, String f_num, Model model) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		FnqDto fdto = cdao.f_view(f_num);
		
		model.addAttribute("fdto",fdto);
		
	}
	
	
}
