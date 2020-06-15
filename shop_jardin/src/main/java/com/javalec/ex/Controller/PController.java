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

import com.javalec.ex.Service.AService.AService;
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
	private SqlSession sqlsession;

	PService ps;
	

	@RequestMapping("/product/p_list")
	public String p_list(HttpServletRequest request, Model model){

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

	@RequestMapping("/product/p_detail")
	public String p_detail(HttpServletRequest request, Model model) {
		
		ps = new PDetailService();
		ps.execute(request, sqlsession, model);
		return "product/p_detail";
	}
	
	@Autowired
	private SqlSession sql;

	@Inject
	AService aservice;

	@RequestMapping("admin/admin_main")
	public String admin_main(Model model) {
		return "admin/admin_main";
	}

	@RequestMapping("admin/admin_mlist")
	public String admin_mlist(Model model) {

		MDao dao = sql.getMapper(MDao.class);

		ArrayList<Member_Dto> mdtos = dao.m_list();

		model.addAttribute("m_count", dao.m_count());

		model.addAttribute("m_list", mdtos);

		return "admin/admin_mlist";
	}

	// 상품 리스트
	@RequestMapping(value = "/admin_product_list")
	public void getlist(Model model) throws Exception {

		List<ProductDto> list = null;
		list = aservice.list();

		model.addAttribute("list", list);
	}

	// 상품 작성
	@RequestMapping(value = "/write")
	public void getwrite() throws Exception {

	}

	// 상품 작성 뷰
	@RequestMapping(value = "/admin_product_write")
	public String writeview() throws Exception {

		return "admin/admin_product_write";
	}

	// 상품 작성
	@RequestMapping(value = "/product_write")
	public String posttWirte(ProductDto dto) throws Exception {
		aservice.write(dto);

		return "redirect:/admin_product_list";
	}

	// 제품 수정updateForm으로 이동
	@RequestMapping(value = "/product_updateForm")
	public String product_updateForm(int p_code) throws Exception {
		
		aservice.getProductInfo(p_code);

		return "/admin/admin_product_update";
	}

	// 상품 수정
	@RequestMapping(value = "/product_update")
	public String product_update(ProductDto dto) throws Exception {

		aservice.modify(dto);

		return "redirect:/admin_product_list";
	}

	// 상품 삭제
	@RequestMapping(value = "/product_delete")
	public String product_delete(int p_code) throws Exception {

		aservice.deleteProduct(p_code);

		return "redirect:/admin_product_list";
	}



	
	
	
}
