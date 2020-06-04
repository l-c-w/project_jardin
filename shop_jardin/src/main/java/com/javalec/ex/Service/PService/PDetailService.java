package com.javalec.ex.Service.PService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PDetailService implements PService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		String p_code = request.getParameter("p_code");
		System.out.println("p_code" + p_code);
		PDao dao = sqlSession.getMapper(PDao.class);
		ProductDto pdto = dao.productDetail(p_code);
		model.addAttribute("product", pdto);		

	}

}
