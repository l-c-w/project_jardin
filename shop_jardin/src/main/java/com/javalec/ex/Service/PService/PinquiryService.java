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

public class PinquiryService implements PService {

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
		model.addAttribute("list2", dao.Plist2(category));

		ArrayList<P_FnqDto> fnqdto = dao.pfnq_review(p_code);
		model.addAttribute("fnq_review", fnqdto);

		// ------------------------------------------------------------
		for (int i = 0; i < fnqdto.size(); i++) {
			P_FnqDto dto = (P_FnqDto) fnqdto.get(i);
			System.out.println("getPf_num : " + dto.getPf_num());
			System.out.println("getPf_title : " + dto.getPf_title());
			System.out.println("getPf_content : " + dto.getPf_content());
			System.out.println("getPf_answer : " + dto.getPf_answer());
			System.out.println("getPf_wdate : " + dto.getPf_wdate());

		}

	}

}
