package com.javalec.ex.Controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.EDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.CService.CService;
import com.javalec.ex.Service.EService.EListService;
import com.javalec.ex.Service.EService.EService;

@Controller
public class EController {

	@Autowired
	private SqlSession sqlSession;
	
	EService es;
	
	@RequestMapping("event/event_list")
	public String event_list(Model model) {		
		es = new EListService();
		es.execute(sqlSession, model);
		return "event/event_list";
	}
	
	
}
