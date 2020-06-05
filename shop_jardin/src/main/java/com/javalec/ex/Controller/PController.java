package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.PDetailService;
import com.javalec.ex.Service.PService.PListService;
import com.javalec.ex.Service.PService.PService;

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
	@RequestMapping("/p_list2")
	public String p_list2(HttpServletRequest request, Model model) {

		ps = new PListService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list2";
	}
	@RequestMapping("/p_list3")
	public String p_list3(HttpServletRequest request, Model model) {

		ps = new PListService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list3";
	}
	@RequestMapping("/p_list4")
	public String p_list4(HttpServletRequest request, Model model) {

		ps = new PListService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list4";
	}
	@RequestMapping("/p_list5")
	public String p_list5(HttpServletRequest request, Model model) {

		ps = new PListService();
		ps.execute(request, sqlsession, model);
//		PDao dao = sqlsession.getMapper(PDao.class);
//		model.addAttribute("list",dao.list());

		return "product/p_list5";
	}
//	@RequestMapping("/p_list")
//	public String p_list(ProductDto PDto,Model model ) {
//		PDao dao = sqlsession.getMapper(PDao.class);
//		dao.p_list(PDto.getP_category());
//		return "redirect:product/p_list";
//	}
	
	@RequestMapping("/p_detail")
	public String p_detail(HttpServletRequest request, Model model) {
		
		ps = new PDetailService();
		ps.execute(request, sqlsession, model);
		return "product/p_detail";
	}
	
	
	
	
	
}
