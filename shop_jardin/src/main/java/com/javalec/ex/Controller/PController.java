package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.MainService.MainListService;
import com.javalec.ex.Service.PService.PDetailService;
import com.javalec.ex.Service.PService.PListService;
import com.javalec.ex.Service.PService.PService;
import com.javalec.ex.Service.PService.PinquiryService;
import com.javalec.ex.Service.PService.ReviewService;

@Controller
@RequestMapping("product")
public class PController {

	@Autowired
	private SqlSession sqlsession;

	PService ps;
	

	@RequestMapping("/p_list")
	public String p_list(HttpServletRequest request, Model model) {

		ps = new PListService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list";
	}
	
	
	@RequestMapping("/review")
	public String review(HttpServletRequest request, Model model) {

		ps = new ReviewService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/review";
	}
	@RequestMapping("/photo")
	public String photo(HttpServletRequest request, Model model) {

		ps = new PinquiryService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/photo";
	}
	@RequestMapping("/p_inquiry")
	public String p_inquiry(HttpServletRequest request, Model model) {

		ps = new PinquiryService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_inquiry";
	}
	@RequestMapping("/p_detail")
	public String p_detail(HttpServletRequest request, Model model) {
		
		ps = new PDetailService();
		ps.execute(request, sqlsession, model);
		return "product/p_detail";
	}
	
	
	
	
	
	
}
