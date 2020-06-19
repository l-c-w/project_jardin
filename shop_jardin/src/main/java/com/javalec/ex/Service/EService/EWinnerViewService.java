package com.javalec.ex.Service.EService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.Winner_joinersDto;

public class EWinnerViewService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EWinnerViewService--------------------");
		
		String w_code = request.getParameter("w_code");
		EDao dao = sqlSession.getMapper(EDao.class);
		Winner_joinersDto ewdto = new Winner_joinersDto(); // 본문 dto
		Winner_joinersDto ewdtoNext = new Winner_joinersDto(); // 다음글
		Winner_joinersDto ewdtoPrev = new Winner_joinersDto(); // 이전글

		System.out.println("w_code : " + w_code);

		dao.winnerUpHit(w_code); // 조회수 증가

		ewdto = dao.winner_view(w_code); // 본문 뷰 메소드 값을 dto에 할당
		
		ewdtoNext = dao.eWinNextView(w_code); // 다음글
		ewdtoPrev = dao.eWinPrevView(w_code); // 이전글

		model.addAttribute("winner_view", ewdto); // 값 전달
		
		
		if (ewdtoNext == null) {
			System.out.println("ewdtoNext : 데이터가 없습니다.");
		} else {
			model.addAttribute("ewdtoNext", ewdtoNext);
		}
		if (ewdtoPrev == null) {
			System.out.println("ewdtoPrev : 데이터가 없습니다.");
		} else {
			model.addAttribute("ewdtoPrev", ewdtoPrev);
		}

		// log
		System.out.println("e_code : " + ewdto.getE_code());
		System.out.println("w_code : " + ewdto.getW_code());
		System.out.println("w_title : " + ewdto.getW_title());
		System.out.println("w_content : " + ewdto.getW_content());
		System.out.println("w_wdate : " + ewdto.getW_wdate());

	}

}
