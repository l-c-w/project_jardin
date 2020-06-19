package com.javalec.ex.Service.AService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.ACDao;
import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public class ACouWriteService implements AService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		ArrayList<ProductDto> pdto = new ArrayList<ProductDto>();
		ArrayList<EventDto> edto = new ArrayList<EventDto>();
		
		ACDao acdao = sqlSession.getMapper(ACDao.class);
		
		pdto = acdao.pCategory_search();
		edto = acdao.eCode_search();
		
		model.addAttribute("pdto", pdto);
		model.addAttribute("edto", edto);
		
	}

}
