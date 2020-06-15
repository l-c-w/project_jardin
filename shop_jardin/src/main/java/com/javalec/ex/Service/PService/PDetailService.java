package com.javalec.ex.Service.PService;

import java.util.ArrayList;
import java.util.List;

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

//	private static final int ROW_LIMIT = 5; // 밑에 몇개씩 보여줄건지
//	private static final int PAGE_LIMIT = 5; // 한페이지에 글 몇개 보여줄건지
//	
//	
//    // 마지막 페이지 번호 계산
//    public int getlastNum(double cnt) {
//        return (int) (Math.ceil(cnt / PAGE_LIMIT));
//    }
//		
//	
//	//밑에 1,2,3,4,5 이거 구하는 함수
//    public List<Integer> getPageList(int pageNum, int totalCnt) {
//        List<Integer> pageList = new ArrayList<Integer>();
//
//        
//        // 마지막 페이지 번호 계산
//        int lastPageNum = getlastNum(totalCnt);
//
//        // 시작 페이지 번호 설정
//        int startPageNum = ((int) (Math.ceil((double) pageNum / ROW_LIMIT) - 1) * ROW_LIMIT) + 1;
//        // 현재 페이지를 기준으로 마지막 페이지 번호 조정
//        lastPageNum = (lastPageNum > startPageNum + ROW_LIMIT - 1) ? startPageNum + ROW_LIMIT - 1 : lastPageNum;
//
//        // 페이지 번호 할당
//        for (int val = startPageNum; val <= lastPageNum; val++) {
//            pageList.add(val);
//        }
//
//        return pageList;
//    }
//
//
//	
//	@Override
//	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
//
//		PDao dao = sqlSession.getMapper(PDao.class);
//		
//		//상품코드
//		String p_code = request.getParameter("p_code");
//		System.out.println("상품상세 정보");
//		// 상품상세 정보
//		System.out.println("p_code : " + p_code);
//
//		ProductDto pdto = dao.productDetail(p_code);
//		model.addAttribute("product", pdto);
//
//		
//		String temp = "";
//
//		int page = 0;
//		System.out.println("PDetailService - request : " + request);
//		temp = request.getParameter("page");
//		if (temp == null) {
//			page = 1; // 최초 기본 1페이지 세팅
//		} else {
//			page = Integer.parseInt(temp);
//		}
//		
//		model.addAttribute("page",page);
//		
//		// 상품리뷰 포토 리뷰
//		
//		// 시작 글넘버
//		int startNum = (page - 1) * PAGE_LIMIT + 1;
//		int endNum = startNum + PAGE_LIMIT - 1;
//	
//		
//		//상품코드로 포토리뷰 갖고 오기
//		ArrayList<P_ReviewDto> prdto = dao.p_review(p_code, startNum , endNum);
//		model.addAttribute("p_review", prdto);
//		//상품코드로 상품리뷰 갖고 오기
//		ArrayList<C_ReviewDto> crdto = dao.c_review(p_code, startNum , endNum);
//		model.addAttribute("c_review", crdto);
//
//		////////////////////////////////////////////////////////////////////
//
//		//상품에 대한 총 리뷰 갯수
//		int rCount = dao.getListCount(p_code);
//		
//		model.addAttribute("r_list", getPageList(page, rCount));
//		
//		model.addAttribute("tabId", request.getParameter("tabId"));
//		
//		// 관련상품
//		String category = request.getParameter("p_category");
//		ArrayList<ProductDto> list2 = new ArrayList<ProductDto>();
//		model.addAttribute("list2", dao.list2(category));
//		
//
//	}

}
