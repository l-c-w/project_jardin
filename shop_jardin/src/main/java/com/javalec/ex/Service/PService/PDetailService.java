package com.javalec.ex.Service.PService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PDetailService implements PService {

	private static final int ROW_LIMIT = 5; // 밑에 몇개씩 보여줄건지
	private static final int PAGE_LIMIT = 5; // 한페이지에 글 몇개 보여줄건지
	
	
	
	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		PDao dao = sqlSession.getMapper(PDao.class);
		
		//상품코드
		String p_code = request.getParameter("p_code");
		System.out.println("상품상세 정보");
		// 상품상세 정보
		System.out.println("p_code : " + p_code);

		ProductDto pdto = dao.productDetail(p_code);
		model.addAttribute("product", pdto);

//		// 관련상품
//		String category = request.getParameter("p_category");
//		ArrayList<ProductDto> list2 = new ArrayList<ProductDto>();
//		model.addAttribute("list2", dao.list2(category));

		int pr_num = Integer.parseInt(request.getParameter("pr_num"));
		
		// 상품리뷰 포토 리뷰
		
		// 시작 글넘버
		int startNum = (pr_num - 1) * PAGE_LIMIT + 1;
		int endNum = startNum + PAGE_LIMIT - 1;
		
		System.out.println("startNum:" + startNum);
		System.out.println("endNum:" + endNum);
		
		
		//상품코드로 포토리뷰 갖고 오기
		ArrayList<P_ReviewDto> prdto = dao.p_review(p_code, startNum , endNum);
		model.addAttribute("p_review", prdto);



		// ------------------------------------------------------------
//		for (int i = 0; i < crdto.size(); i++) {
//			C_ReviewDto dto = (C_ReviewDto) crdto.get(i);
//			System.out.println("getCr_num : " + dto.getCr_num());
//			System.out.println("getCr_title : " + dto.getCr_title());
//			System.out.println("getCr_content : " + dto.getCr_content());
//			System.out.println("getCr_wdate : " + dto.getCr_wdate());
//
//		}
//		// ------------------------------------------------------------
//		for (int i = 0; i < fnqdto.size(); i++) {
//			P_FnqDto dto = (P_FnqDto) fnqdto.get(i);
//			System.out.println("getPf_num : " + dto.getPf_num());
//			System.out.println("getPf_title : " + dto.getPf_title());
//			System.out.println("getPf_content : " + dto.getPf_content());
//			System.out.println("getPf_answer : " + dto.getPf_answer());
//			System.out.println("getPf_wdate : " + dto.getPf_wdate());
//
//		}

	}

}
