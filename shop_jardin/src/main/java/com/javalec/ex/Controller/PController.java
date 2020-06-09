package com.javalec.ex.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.MainService.MainListService;
import com.javalec.ex.Service.PService.PDetailService;
import com.javalec.ex.Service.PService.PListService;
import com.javalec.ex.Service.PService.PService;
import com.javalec.ex.Service.PService.PinquiryService;

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
	@RequestMapping("/p_detail")
	public String p_detail(HttpServletRequest request, Model model) {
		
		ps = new PDetailService();
		ps.execute(request, sqlsession, model);
		return "product/p_detail";
	}



	
	
	
}
