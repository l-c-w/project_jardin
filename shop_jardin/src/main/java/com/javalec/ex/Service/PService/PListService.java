package com.javalec.ex.Service.PService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PListService implements PService {

//	@Override
//	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
//
//		String category = request.getParameter("p_category");
//		
//		System.out.println(category);
//		if(category == null) {
//			category = "원두";
//		}
//		
//		System.out.println("--------------------PListService--------------------");
//		
//		PDao dao = sqlSession.getMapper(PDao.class);
////		ArrayList<ProductDto> list = new ArrayList<ProductDto>();
////		model.addAttribute("list",dao.list());
//		
//		ArrayList<ProductDto> list2 = new ArrayList<ProductDto>();
//		model.addAttribute("list2",dao.list2(category));
//		
//		ArrayList<ProductDto> list_category = new ArrayList<ProductDto>();
//		list_category = dao.list();
//		model.addAttribute("list_category",list_category);
//		model.addAttribute("category",category);
//		
//		
//	}

}
