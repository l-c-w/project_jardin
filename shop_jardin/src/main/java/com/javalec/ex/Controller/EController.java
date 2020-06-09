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
import com.javalec.ex.Service.EService.EViewService;
import com.javalec.ex.Service.EService.EFinListService;
import com.javalec.ex.Service.EService.EFinViewService;
import com.javalec.ex.Service.EService.EListService;
import com.javalec.ex.Service.EService.EModifyCommentService;
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
	
	@RequestMapping("/fin_event_list")
	public String fin_event_list(HttpServletRequest request, Model model) {
		es = new EFinListService();
		es.execute( request,sqlSession, model);
		return "event/fin_event_list";
	}
	
	@RequestMapping("/event_view")
	public String event_view(HttpServletRequest request, Model model) {
		es = new EViewService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	@RequestMapping("/fin_event_view")
	public String fin_event_view(HttpServletRequest request, Model model) {
		es = new EFinViewService();
		es.execute(request, sqlSession, model);
		return "event/fin_event_view";
	}
	
	@RequestMapping("/event_commentOk")
	public String modify_comment(HttpServletRequest request, Model model) {
		es = new EModifyCommentService();
		es.execute(request, sqlSession, model);
		return "event/event_view";
	}
	
	
	
}
