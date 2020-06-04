package com.javalec.ex.Service.PService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PDetailService implements PService {

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

		System.out.println("상품리뷰");
		// 상품리뷰 포토 리뷰
		ArrayList<P_ReviewDto> prdto = dao.p_review(p_code);
		model.addAttribute("p_review", prdto);
		// 상품리뷰 글 리뷰
		ArrayList<C_ReviewDto> crdto = dao.c_review(p_code);
		model.addAttribute("c_review", crdto);
		
		

		// ------------------------------------------------------------
		for (int i = 0; i < prdto.size(); i++) {
			P_ReviewDto dto = (P_ReviewDto) prdto.get(i);
			System.out.println("getPr_num : " + dto.getPr_num());
			System.out.println("getPr_title : " + dto.getPr_title());
			System.out.println("getPr_content : " + dto.getPr_content());
			System.out.println("getPr_wdate : " + dto.getPr_wdate());
		}
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
