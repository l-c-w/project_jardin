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
import com.javalec.ex.Service.CService.CService;
import com.javalec.ex.Service.EService.ECommentService;
import com.javalec.ex.Service.EService.EListService;
import com.javalec.ex.Service.EService.EService;

@Controller
@RequestMapping("event")
public class EController {

	@Autowired
	private SqlSession sqlSession;
	
	EService es;
	
	@RequestMapping("/event_list")
	public String event_list(HttpServletRequest request, Model model) {
		es = new EListService();
		es.execute( request,sqlSession, model);
		return "event/event_list";
	}
	//@RequestParam(value = "page", defaultValue = "0")String page 메모
	
	@RequestMapping("/event_view")
	public String event_view(HttpServletRequest request, Model model) {
		es = new ECommentService();
		es.execute( request,sqlSession, model);
		EDao dao = sqlSession.getMapper(EDao.class);
		model.addAttribute("event_view", dao.event_view(request.getParameter("e_code")));
		return "event/event_view";
	}
	
//	@RequestMapping("/event_comment")
//	public String event_comment(HttpServletRequest request, Model model) {
//		es = new EListService();
//		es.execute( request,sqlSession, model);
//		return "event/event_comment";
//	}
	
	
}
