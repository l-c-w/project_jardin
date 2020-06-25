package com.javalec.ex.Service.EService;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;

public class EViewService implements EService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------EViewService--------------------");
		
		EventDto edto = new EventDto(); // 본문 dto
		EventDto edtoNext = new EventDto(); // 다음글 dto
		EventDto edtoPrev = new EventDto(); // 이전글 dto
		EDao dao = sqlSession.getMapper(EDao.class);
//		String tempPage = request.getParameter("page");	//	파라미터는 String으로 가져오기 때문에 임시로 만든 변수
		String e_code = request.getParameter("e_code");
		int page = 1;
		int limit = 10; // ex) limit = 10 -> 게시글 표시 10개 EController에 있는 event_comment()의 변수 limit와 갯수를 맞춰야함ㅠ
		
		// page = Integer.parseInt(tempPage);	//	파라미터로 가져온 값을 변환하여 그대로 할당
		//	<a href="event_view?e_code=${dto.e_code }&page=1"> 이기 때문에 무조건 페이지는 1이다
		
		// EViewService
		edto = dao.event_view(e_code);
		model.addAttribute("event_view", edto);

		// eNextView, ePrevView
		edtoNext = dao.eNextView(e_code);
		edtoPrev = dao.ePrevView(e_code);
		
		// model
		model.addAttribute("page", page);
		model.addAttribute("e_code", e_code);
		if (edtoNext == null) {
			System.out.println("edtoNext : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoNext", edtoNext);
		}
		if (edtoPrev == null) {
			System.out.println("edtoPrev : 데이터가 없습니다.");
		} else {
			model.addAttribute("edtoPrev", edtoPrev);
		}

		

	}

}