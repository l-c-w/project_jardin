package com.javalec.ex.Controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Service.PService.PDetailService;
import com.javalec.ex.Service.PService.PListService;
import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.PService;
import com.javalec.ex.Service.PService.PinquiryService;
import com.javalec.ex.Service.PService.ReviewService;

@Controller
@RequestMapping("/product/*")
public class PController {

	@Autowired
	private SqlSession sql;

	PService ps;
	

	@RequestMapping("/product/p_list")
	public String p_list(HttpServletRequest request, Model model){

		ps = new PListService();
		ps.execute(request, sql, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list";
	}

	
	@RequestMapping("/review")
	public String review(HttpServletRequest request, Model model) {

		ps = new ReviewService();
		ps.execute(request, sql, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/review";
	}
	@RequestMapping("/photo")
	public String photo(HttpServletRequest request, Model model) {

		ps = new PinquiryService();
		ps.execute(request, sql, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/photo";
	}
	@RequestMapping("/p_inquiry")
	public String p_inquiry(HttpServletRequest request, Model model) {

		ps = new PinquiryService();
		ps.execute(request, sql, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_inquiry";
	}

	@RequestMapping("/product/p_detail")
	public String p_detail(HttpServletRequest request, Model model) {
		
		ps = new PDetailService();
		ps.execute(request, sql, model);
		return "product/p_detail";
	}
	



	
	
	
}
