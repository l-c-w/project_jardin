package com.javalec.ex.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.EService.EViewService;
import com.javalec.ex.Service.EService.EWinnerListService;
import com.javalec.ex.Service.EService.EWinnerViewService;
import com.javalec.ex.Service.EService.EWriteService;
import com.javalec.ex.Service.EService.EDelCommentService;
import com.javalec.ex.Service.EService.EFinListService;
import com.javalec.ex.Service.EService.EListService;
import com.javalec.ex.Service.EService.EModifyCommentService;
import com.javalec.ex.Service.EService.EService;

@Controller
@RequestMapping("event")
public class EController {

	@Autowired
	private SqlSession sqlSession;
	
	EService es;
	
	// 진행중 이벤트
	
	@RequestMapping("/event_list")	// 진행중 이벤트 리스트
	public String event_list(HttpServletRequest request, Model model) {
		es = new EListService();
		es.execute( request,sqlSession, model);
		return "event/event_list";
	}
	@RequestMapping("/event_view")	// 진행중 이벤트 뷰 (댓글 뷰 포함)
	public String event_view(HttpServletRequest request, Model model) {
		es = new EViewService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	@RequestMapping("/event_eWite") // 진행중 이벤트 댓글 등록
	public String event_eWite(HttpServletRequest request, Model model) {
		es = new EWriteService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	@RequestMapping("/event_commentOk") // 진행중 이벤트 댓글 수정
	public String modify_comment(HttpServletRequest request, Model model) {
		es = new EModifyCommentService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	@RequestMapping("/event_eDeleteComment") // 진행중 이벤트 댓글 삭제
	public String event_eDeleteComment(HttpServletRequest request, Model model) {
		es = new EDelCommentService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	
	// 종료된 이벤트
	
	@RequestMapping("/fin_event_list")	// 종료된 이벤트 리스트
	public String fin_event_list(HttpServletRequest request, Model model) {
		es = new EFinListService();
		es.execute( request,sqlSession, model);
		return "event/fin_event_list";
	}
	
	@RequestMapping("/fin_event_view")	// 종료된 이벤트 뷰 (댓글 뷰 포함)
	public String fin_event_view(HttpServletRequest request, Model model) {
		es = new EViewService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_eWite") // 종료된 이벤트 댓글 등록
	public String fin_event_eWite(HttpServletRequest request, Model model) {
		es = new EWriteService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_commentOk") // 종료된 이벤트 댓글 수정
	public String fin_modify_comment(HttpServletRequest request, Model model) {
		es = new EModifyCommentService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_eDeleteComment") // 종료된 이벤트 댓글 삭제
	public String fin_event_eDeleteComment(HttpServletRequest request, Model model) {
		es = new EDelCommentService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	
	// 당첨자
	
	@RequestMapping("/prizewinner_list")
	public String prizewinner_list(HttpServletRequest request, Model model) {
		es = new EWinnerListService();
		es.execute( request,sqlSession, model);
		return "event/prizewinner_list";
	}
	
	@RequestMapping("/prizewinner_view")
	public String prizewinner_view(HttpServletRequest request, Model model) {
		es = new EWinnerViewService();
		es.execute( request,sqlSession, model);
		return "event/prizewinner_view";
	}
	
	
	// 테스트
	
	@RequestMapping("/testPage")
	public String testPage(HttpServletRequest request, Model model) {
		return "event/testPage";
	}
	
	
	
	
	
	//@RequestParam(value = "page", defaultValue = "0")String page 메모
}
