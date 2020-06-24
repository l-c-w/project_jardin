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
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;
import com.javalec.ex.Service.EService.EViewService;
import com.javalec.ex.Service.EService.EWinnerListService;
import com.javalec.ex.Service.EService.EWinnerViewService;
import com.javalec.ex.Service.EService.EWriteService;
import com.javalec.ex.Service.EService.EDelCommentService;
import com.javalec.ex.Service.EService.EFinDelCommentService;
import com.javalec.ex.Service.EService.EFinListService;
import com.javalec.ex.Service.EService.EFinModifyCommentService;
import com.javalec.ex.Service.EService.EFinViewService;
import com.javalec.ex.Service.EService.EFinWriteService;
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
		es.execute(request,sqlSession, model);
		return "event/event_list";
	}
	
//	@RequestMapping("/comment_list")	//	
//	@ResponseBody	//	json 데이터로 페이지를 리턴해서 보내줌
//	public ArrayList<CommentDto> comment_list() { 
//		// mybatis에 있는 객체를 가져옴
//		IDao dao = sqlSession.getMapper(IDao.class);		
//		return dao.comment_list();
//	}
	
	@RequestMapping("/event_view")	// 진행중 이벤트 뷰 (댓글 뷰 포함)
	public String event_view(HttpServletRequest request, Model model) {
		es = new EViewService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
//	<form action="event_eDeleteComment" method="post" class="comm_modi2">
//	<input type="hidden" value="${sessionScope.session_mem }" name="requestUser">
//	<input type="hidden" value="${e_com.id }" name="authUser">
//	<input type="hidden" value="${event_view.e_code }" name="e_code">
//	<input type="hidden" value="${e_com.ec_num }" name="ec_num">
//	<input type="hidden" value="${page }" name="page">
//	<ul id="coSub" class="comment_modifyV">
//		<fmt:formatDate var="ec_wdate1" value="${e_com.ec_wdate }" pattern="yyyy/MM/dd" />
//		<fmt:formatDate var="ec_wdate2" value="${e_com.ec_wdate }" pattern="HH:mm:ss" />
//		<li class="name">${e_com.id } <span>[${ec_wdate1 }&nbsp;&nbsp;${ec_wdate2 }]</span></li>
//		<li class="txt">${e_com.ec_content }</li>
//		<li class="btn">
//			<c:if test="${sessionScope.session_mem eq e_com.id }">
//				<a class="rebtn ${e_com.ec_num }" style="cursor: pointer;" id="modi_btn">수정</a>
//				<a class="rebtn delComm" style="cursor: pointer;">삭제</a>
//			</c:if>
//		</li>
//	</ul>
//	</form>
	
	//@RequestParam(value = "page", defaultValue = "0")String page 메모
	@ResponseBody
	@RequestMapping("/event_comment")	// 진행중 이벤트 리스트
	public ArrayList<Event_commentDto> event_comment(@RequestParam(value = "page")String tempPage,
			@RequestParam(value = "e_code")String e_code) {
		
		System.out.println("--------------------event_comment--------------------");
		EDao dao = sqlSession.getMapper(EDao.class);
		int page = Integer.parseInt(tempPage); // 리퀘스트에 값이 있으면 page변수에 리퀘스트 값을 할당;
		int limit = 3; // 1page = 게시글 10개		
		System.out.println("e_code : " + e_code);
		System.out.println("page : " + page);
		
		// 페이지별 리스트 개수 가져오기
		int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 + 1 = 1
		int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10
		
		// 전체 게시글 count(*)
		int listcount = dao.getCommentCount(e_code); // listcount -> 20
		// 최대 페이지 수
		int maxpage = (int) ((double) listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
		// 처음 페이지
		int startpage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
		// 마지막 페이지
		int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;
		// EViewService 끝
		
		
		System.out.println("listcount : " + listcount);
		System.out.println("page : " + page);
		System.out.println("maxpage : " + maxpage);
		System.out.println("startpage : " + startpage);
		System.out.println("endpage : " + endpage);
		
		return dao.event_comment(e_code, startrow, endrow);
	}

	
	// getCommentCount
	@RequestMapping("/getCommentCount") // 진행중 이벤트 댓글 등록
	@ResponseBody
	public int getCommentCount(@RequestParam(value = "e_code")String e_code) {		
		EDao dao = sqlSession.getMapper(EDao.class);
		return dao.getCommentCount(e_code);
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
		es = new EFinViewService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_eWite") // 종료된 이벤트 댓글 등록
	public String fin_event_eWite(HttpServletRequest request, Model model) {
		es = new EFinWriteService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_commentOk") // 종료된 이벤트 댓글 수정
	public String fin_modify_comment(HttpServletRequest request, Model model) {
		es = new EFinModifyCommentService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/fin_event_eDeleteComment") // 종료된 이벤트 댓글 삭제
	public String fin_event_eDeleteComment(HttpServletRequest request, Model model) {
		es = new EFinDelCommentService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	
	// 당첨자
	
	@RequestMapping("/prizewinner_list") // 당첨자 리스트
	public String prizewinner_list(HttpServletRequest request, Model model) {
		es = new EWinnerListService();
		es.execute( request,sqlSession, model);
		return "event/prizewinner_list";
	}
	
	@RequestMapping("/prizewinner_view") // 당첨자 뷰
	public String prizewinner_view(HttpServletRequest request, Model model) {
		es = new EWinnerViewService();
		es.execute( request,sqlSession, model);
		return "event/prizewinner_view";
	}
	
	
	// 쿠폰 받기
	
	@RequestMapping("/myCouponOk") // 
	public String myCouponOk(HttpServletRequest request, Model model) {
//		es = new EWinnerListService();
//		es.execute( request,sqlSession, model);   // ajax를 통한 값 전달
		return "event/prizewinner_list";
	}
		
	
	// 테스트
	
	@RequestMapping("/testPage")
	public String testPage(HttpServletRequest request, Model model) {
		return "event/testPage";
	}
	
	
	
	
	
	//@RequestParam(value = "page", defaultValue = "0")String page 메모
}








/*
 * //@RequestParam(value = "page", defaultValue = "0")String page 메모
 * 
 * @ResponseBody
 * 
 * @RequestMapping("/event_comment") // 진행중 이벤트 리스트 public
 * ArrayList<Event_commentDto> event_comment(@RequestParam(value = "page")String
 * tempPage,
 * 
 * @RequestParam(value = "e_code")String e_code) {
 * System.out.println("--------------------event_comment--------------------");
 * EDao dao = sqlSession.getMapper(EDao.class); System.out.println("e_code : " +
 * e_code); System.out.println("tempPage : " + tempPage); int page = 0; // 페이징
 * 임시변수 int limit = 3; // 1page = 게시글 10개 if(tempPage == null) { page = 1; }else
 * { page = Integer.parseInt(tempPage); // 리퀘스트에 값이 있으면 page변수에 리퀘스트 값을 할당 }
 * 
 * // 페이지별 리스트 개수 가져오기 int startrow = (page - 1) * limit + 1; // (1 - 1) * 10 +
 * 1 = 1 int endrow = startrow + limit - 1; // 1 + 10 - 1 = 10
 * 
 * // 전체 게시글 count(*) int listcount = dao.getCommentCount(e_code); // listcount
 * -> 20 // 최대 페이지 수 int maxpage = (int) ((double) listcount / limit + 0.95); //
 * 20/10 -> 2+0.95 -> (int)2.95 -> 2 // 처음 페이지 int startpage = ((int) ((double)
 * page / 10 + 0.9) - 1) * 10 + 1; // 1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
 * // 마지막 페이지 int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨 if
 * (endpage > startpage + 10 - 1) endpage = startpage + 10 - 1; // EViewService
 * 끝
 * 
 * System.out.println("listcount : " + listcount); System.out.println("page : "
 * + page); System.out.println("maxpage : " + maxpage);
 * System.out.println("startpage : " + startpage);
 * System.out.println("endpage : " + endpage);
 * 
 * return dao.event_comment(e_code, page, limit); } //public
 * ArrayList<Event_commentDto> event_comment(String e_code, int page, int
 * limit);
 */