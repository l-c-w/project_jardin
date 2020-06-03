package com.javalec.ex.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.CDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;

@Controller
public class CController {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping("community/comment_list")
	public String comment_list(Model model) {
		
		CDao cao = sqlsession.getMapper(CDao.class);
		
		ArrayList<C_ReviewDto> cdto = cao.c_list();
		
		model.addAttribute("clist",cdto);
		
		return "community/comment_list";
	}

	
	
	
	
	@RequestMapping("community/comment_view")
	public String comment_view(HttpServletRequest request, Model model) {
		
		
		String id = request.getParameter("id");
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		C_ReviewDto cdto = dao.c_view(id);
		
		model.addAttribute("c_view", cdto);
		
		return "community/comment_view";
	}
	
	
	
	

	@RequestMapping("community/comment_write")
	public String comment_write() {
		return "community/comment_write";
	}
	
	
	
	@RequestMapping("community/comment_write_ok")
	public String comment_write_ok() {
		
		
		
		
		
		return "community/comment_write_ok";
	}
	
	


	@RequestMapping("community/epilogue_list")
	public String epilogue_list() {
		return "community/epilogue_list";
	}

	@RequestMapping("community/epilogue_view")
	public String epilogue_view() {
		return "community/epilogue_view";
	}

	@RequestMapping("community/epilogue_write")
	public String epilogue_write() {
		return "community/epilogue_write";
	}
	
	

//	@RequestMapping("community/enjoy_list")
//	public String enjoy_list() {
//		return "community/enjoy_list";
//	}
//
//	@RequestMapping("community/enjoy_view")
//	public String enjoy_view() {
//		return "community/enjoy_view";
//	}	


//	@RequestMapping("community/expr_list")
//	public String expr_list() {
//		return "community/expr_list";
//	}
//
//	@RequestMapping("community/expr_review")
//	public String expr_review() {
//		return "community/expr_review";
//	}
//
//	@RequestMapping("community/expr_view")
//	public String expr_view() {
//		return "community/expr_view";
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
}
