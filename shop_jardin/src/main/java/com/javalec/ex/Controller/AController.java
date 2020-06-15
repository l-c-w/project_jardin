package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Service.AService.ACouWriteService;
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
	
	@RequestMapping("admin/admin_coupon")
	public String admin_coupon(HttpServletRequest request, Model model) {
		return "admin/admin_coupon";
	}
	
	@RequestMapping("admin/admin_couponWriteDo")
	public String admin_couponWriteDo(HttpServletRequest request, Model model) {
		as = new ACouWriteService();
		as.execute(request,sqlSession, model);
		return "admin/admin_coupon";
	}
	
	
	
	
}
