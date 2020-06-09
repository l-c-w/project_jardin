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
		Winner_joinersDto dto = new Winner_joinersDto(); // 본문 dto

		System.out.println("w_code : " + w_code);

		dao.winnerUpHit(w_code); // 조회수 증가

		dto = dao.winner_view(w_code); // 본문 뷰 메소드 값을 dto에 할당

		model.addAttribute("winner_view", dto); // 값 전달

		System.out.println("e_code : " + dto.getE_code());
		System.out.println("w_code : " + dto.getW_code());
		System.out.println("w_title : " + dto.getW_title());
		System.out.println("w_content : " + dto.getW_content());
		System.out.println("w_wdate : " + dto.getW_wdate());

	}

}
