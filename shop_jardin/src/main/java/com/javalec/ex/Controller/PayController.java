package com.javalec.ex.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Service.PayService.Cart_delService;
import com.javalec.ex.Service.PayService.Cart_upddateService;
import com.javalec.ex.Service.PayService.CouponService;
import com.javalec.ex.Service.PayService.Get_coupon;
import com.javalec.ex.Service.PayService.MemCService;
import com.javalec.ex.Service.PayService.PayService;
import com.javalec.ex.Service.PayService.Payment;
import com.javalec.ex.Service.PayService.PointService;

@Controller
public class PayController {

	@Autowired
	private SqlSession sqlSession;

	PayService pays = null;

	// 내 포인트 목록보기
	@RequestMapping("mypage/point")
	public String point(Model model) {
		model.addAttribute("id", "test4");
		pays = new PointService();
		pays.execute(sqlSession, model);

		return "mypage/point";
	}

	// 내 쿠폰목록 보기
	@RequestMapping("mypage/coupon")
	public String coupon_list(Model model) {
		model.addAttribute("id", "qwer");
		pays = new CouponService();
		pays.execute(sqlSession, model);

		return "mypage/coupon";
	}

	// 카트 리스트보기
	@RequestMapping("mypage/cart")
	public String cart_view(HttpServletRequest request, Model model) {

		String id = "qwer";
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		model.addAttribute("list", payDao.cart_view(id));

		return "mypage/cart";
	}

	// 카트 수량변화 DB적용
	@RequestMapping("mypage/cart_change")
	@ResponseBody
	public void change_amount(@RequestBody HashMap<String, String> map, Model model) {
		model.addAttribute("cart_code", map.get("cart_code"));
		model.addAttribute("amount_", map.get("amount_"));

		pays = new Cart_upddateService();
		pays.execute(sqlSession, model);
	}

	// 카트 한개 삭제
	@RequestMapping("mypage/cart_del2")
	@ResponseBody
	public void cart_del2(@RequestBody HashMap<String, String> map, Model model) {
		model.addAttribute("del_type", "del_one");
		model.addAttribute("cart_code2", map.get("cart_code"));
		pays = new Cart_delService();
		pays.execute(sqlSession, model);
	}

	// 카트 선택목록 삭제
	@RequestMapping("mypage/cart_del")
	@ResponseBody
	public void cart_del(@RequestBody HashMap<String, String[]> map, Model model) {
		model.addAttribute("del_type", "sel_del");
		model.addAttribute("cart_code1", map.get("cart_code"));
		pays = new Cart_delService();
		pays.execute(sqlSession, model);

	}

	// 상품구매 주문페이지로
	@RequestMapping("payment/payment")
	public String buy_selected(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		model.addAttribute("id", "qwer");
		pays = new Payment();
		pays.execute(sqlSession, model);

		return "payment/payment";
	}

	// 주문자 정보 회원정보에 반영
	@RequestMapping("payment/change_member")
	@ResponseBody
	public void change_member(Member_Dto member_Dto, Model model) {
		model.addAttribute("member_info", member_Dto);
		model.addAttribute("id", "test10");

		pays = new MemCService();
		pays.execute(sqlSession, model);
	}

	// 쿠폰리스트 가져오기
	@RequestMapping("payment/coupon_list")
	public String use_coupon(HttpServletRequest request, Model model) {
		model.addAttribute("id", "qwer");
		String[] cart_code = request.getParameterValues("cart_code");
		model.addAttribute("cart_code", cart_code);
		pays = new Get_coupon();
		pays.execute(sqlSession, model);

		return "payment/coupon_list";
	}

}
