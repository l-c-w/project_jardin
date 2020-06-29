package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Service.AService.ACouWriteDoService;
import com.javalec.ex.Service.AService.ACouWriteService;
import com.javalec.ex.Service.AService.AEvWriteService;
import com.javalec.ex.Service.AService.AService;
import com.javalec.ex.Service.EService.EListService;

@Controller
public class AController {

	@Autowired
	private SqlSession sqlSession;
	
	AService as;
	
	@RequestMapping("admin/admin_header")
	public String admin_header(HttpServletRequest request, Model model) {
		return "admin/admin_header";
	}
	
	@RequestMapping("admin/admin_coupon") // 쿠폰 등록
	public String admin_coupon(HttpServletRequest request, Model model) {
		as = new ACouWriteService();
		as.execute(request, sqlSession, model);
		return "admin/admin_coupon";
	}
	
	@RequestMapping("admin/admin_couponWriteDo") // 쿠폰 등록 Ok
	public String admin_couponWriteDo(HttpServletRequest request, Model model) {
		as = new ACouWriteDoService();
		as.execute(request,sqlSession, model);
		return "admin/admin_coupon_result";
	}
	
	@RequestMapping("admin/admin_ewrite") // 이벤트 등록
	public String admin_ewrite(HttpServletRequest request, Model model) {
		as = new ACouWriteService();	//	쿠폰 등록 dao와 같은 dao, 카테고리만 찾으면 되기에 같은 걸 썼다.
		as.execute(request,sqlSession, model);
		return "admin/admin_ewrite";
	}
	
	@RequestMapping("admin/admin_ewriteDo") // 이벤트 등록
	public String admin_ewriteDo(HttpServletRequest request, Model model) {		
//		System.out.println("eventdto1 : " + eventDto.getE_start());
//		model.addAttribute("eventdto", eventDto);
//		System.out.println("eventdto2 : " + eventDto.getE_start());
		as = new AEvWriteService();
		as.execute(request, sqlSession, model);		
		return "admin/admin_ewrite";
	}
	
	
}
