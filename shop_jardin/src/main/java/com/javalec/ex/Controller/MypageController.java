package com.javalec.ex.Controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Service.MypageService.MypageService;

@Controller
public class MypageController {

	@Inject
	MypageService mypageService;

	// 장바구니 담기
	@PostMapping("mypage/go_cart")
	public String go_cart(HttpSession session, CartDto cartDto, Model model) throws Exception {
		String id = (String) session.getAttribute("session_mem");
		cartDto.setId(id);

		mypageService.go_cart(cartDto);

		return "redirect:cart";
	}

	// 내 포인트 목록보기
	@RequestMapping("mypage/point")
	public String point(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");

		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		model.addAttribute("usable_point", mypageService.usable_point(id));
		model.addAttribute("point_list", mypageService.point_list(id));
		model.addAttribute("point_sum", mypageService.point_sum(id));
		model.addAttribute("usepoint_list", mypageService.upoint_list(id));
		model.addAttribute("usepoint_sum", mypageService.upoint_sum(id));

		return "mypage/point";
	}

	// 쿠폰리스트 보기
	@RequestMapping("mypage/coupon")
	public String coupon_list(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");

		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		model.addAttribute("usable_point", mypageService.usable_point(id));
		model.addAttribute("ucoupon_list", mypageService.ucou_list(id));
		model.addAttribute("ncoupon_list", mypageService.ncou_list(id));

		return "mypage/coupon";
	}

	// 카트 리스트보기
	@RequestMapping("mypage/cart")
	public String cart_view(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");

		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		model.addAttribute("usable_point", mypageService.usable_point(id));
		model.addAttribute("list", mypageService.cart_view(id));

		return "mypage/cart";
	}

	// 카트 수량변화 DB적용
	@RequestMapping("mypage/cart_change")
	@ResponseBody
	public void change_amount(@RequestBody CartDto cartDto, Model model) throws Exception {

		mypageService.change_amount(cartDto);
	}

	// 카트 선택목록 삭제
	@RequestMapping("mypage/cart_del")
	@ResponseBody
	public void cart_del(@RequestBody HashMap<String, String[]> map, Model model) throws Exception {
		String[] cart_code = map.get("cart_code");
		model.addAttribute("del_check", mypageService.cart_del(cart_code));
	}
}
