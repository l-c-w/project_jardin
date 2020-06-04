package com.javalec.ex.Service.PService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PListService implements PService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------PListService--------------------");
		
		ArrayList<ProductDto> list = new ArrayList<ProductDto>();
		PDao dao = sqlSession.getMapper(PDao.class);		
		model.addAttribute("list",dao.list());
		System.out.println(dao.list().size());
		
	}

}
