package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.MDto.Oo_fnqDto;

public class OOFnqView {
	
	
	public void o_view(SqlSession sqlsession, Model model, String oo_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		Oo_fnqDto odto = cdao.oo_view(oo_num);
		
		model.addAttribute("oo_view", odto);
		
	}
	
	

}
