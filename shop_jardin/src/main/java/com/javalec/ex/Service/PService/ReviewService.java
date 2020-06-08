package com.javalec.ex.Service.PService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public class ReviewService implements PService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("상품상세 정보");
		// 상품상세 정보
		String p_code = request.getParameter("p_code");
		System.out.println("p_code : " + p_code);
		PDao dao = sqlSession.getMapper(PDao.class);

		ProductDto pdto = dao.productDetail(p_code);
		model.addAttribute("product", pdto);

		// 관련상품
		String category = request.getParameter("p_category");
		ArrayList<ProductDto> list2 = new ArrayList<ProductDto>();
		model.addAttribute("list2", dao.list2(category));

		System.out.println("상품리뷰");
		// 상품리뷰 글 리뷰
		ArrayList<C_ReviewDto> crdto = dao.c_review(p_code);
		model.addAttribute("c_review", crdto);


		// ------------------------------------------------------------
		for (int i = 0; i < crdto.size(); i++) {
			C_ReviewDto dto = (C_ReviewDto) crdto.get(i);
			System.out.println("getCr_num : " + dto.getCr_num());
			System.out.println("getCr_title : " + dto.getCr_title());
			System.out.println("getCr_content : " + dto.getCr_content());
			System.out.println("getCr_wdate : " + dto.getCr_wdate());

		}

	}
		

}
