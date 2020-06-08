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

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		int page = 0;

		String temp = "";

		System.out.println("PDetailService - request : " + request);

		temp = request.getParameter("page");
		System.out.println("temp : " + temp);

		if (temp == null) {
			page = 1; // 최초 기본 1페이지 세팅
		} else {
			page = Integer.parseInt(temp);
		}
//		

		int limit = 5; // 1page = 게시글 10개

		PDao dao = sqlSession.getMapper(PDao.class);
		
		// 페이지별 리스트 개수 가져오기
				ArrayList<P_ReviewDto> prdto = new ArrayList<P_ReviewDto>();
				int startrow = (page - 1) * limit + 1;	// (1 - 1) * 10 + 1 = 1
				int endrow = startrow + limit - 1;	//	1 + 10 - 1 = 10
				
				String p_code = request.getParameter("p_code");
				prdto = dao.p_review(p_code, startrow, endrow);
				// 전체 게시글 count(*)
				int listcount = dao.getListCount(); // listcount -> 20 
				// 최대 페이지 수
				int maxpage = (int)((double)listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
				// 처음 페이지
				int startpage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1; //1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
				// 마지막 페이지
				int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
				if(endpage > startpage + 10 - 1)
					endpage = startpage + 10 - 1;
				
				
				model.addAttribute("p_review", prdto);
				
				model.addAttribute("listcount", listcount);
				model.addAttribute("page", page);
				model.addAttribute("maxpage", maxpage);
				model.addAttribute("startpage", startpage);
				model.addAttribute("endpage", endpage);

				
				System.out.println("listcount : " + listcount);
				System.out.println("page : " + page);
				System.out.println("maxpage : " + maxpage);
				System.out.println("startpage : " + startpage);
				System.out.println("endpage : " + endpage);
				
		System.out.println("상품상세 정보");
		// 상품상세 정보
		System.out.println("p_code : " + p_code);

		ProductDto pdto = dao.productDetail(p_code);
		model.addAttribute("product", pdto);

		// 관련상품
		String category = request.getParameter("p_category");
		ArrayList<ProductDto> list2 = new ArrayList<ProductDto>();
		model.addAttribute("list2", dao.list2(category));

//		System.out.println("상품리뷰");
		// 상품리뷰 포토 리뷰
//		ArrayList<P_ReviewDto> prdto = dao.p_review(p_code, page, limit);
//		model.addAttribute("p_review", prdto);
//		// 상품리뷰 글 리뷰
//		ArrayList<C_ReviewDto> crdto = dao.c_review(p_code);
//		model.addAttribute("c_review", crdto);
//
//		ArrayList<P_FnqDto> fnqdto = dao.pfnq_review(p_code);
//		model.addAttribute("fnq_review", fnqdto);

		// ------------------------------------------------------------
		for (int i = 0; i < prdto.size(); i++) {
			P_ReviewDto dto = (P_ReviewDto) prdto.get(i);
			System.out.println("getPr_num : " + dto.getPr_num());
			System.out.println("getPr_title : " + dto.getPr_title());
			System.out.println("getPr_content : " + dto.getPr_content());
			System.out.println("getPr_wdate : " + dto.getPr_wdate());
		}
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
