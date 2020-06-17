package com.javalec.ex.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Service.PayService.Cart_delService;
import com.javalec.ex.Service.PayService.Cart_upddateService;
import com.javalec.ex.Service.PayService.CouponService;
import com.javalec.ex.Service.PayService.PayService;
import com.javalec.ex.Service.PayService.Payment;
import com.javalec.ex.Service.PayService.PointService;

@Controller
public class PayController {

	@Autowired
	private SqlSession sqlSession;

	PayService pays = null;

	// 카트 뷰 보기
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

		Map<String, Object> map2 = model.asMap();
		String cart_code = (String) map2.get("cart_code");
		System.out.println(cart_code);

		pays = new Cart_upddateService();
		pays.execute(sqlSession, model);
	}

	// 카트 선택목록 삭제
	@RequestMapping("mypage/cart_del")
	@ResponseBody
	public void cart_del(@RequestBody HashMap<String, String[]> map, Model model) {
		model.addAttribute("cart_code", map.get("cart_code"));
		System.out.println("여긴 오니?");
		model.addAttribute("cart_code2", map.get("code_"));
		pays = new Cart_delService();
		pays.execute(sqlSession, model);

	}

	@RequestMapping("mypage/point")
	public String point(Model model) {
		model.addAttribute("id", "test4");
		pays = new PointService();
		pays.execute(sqlSession, model);

		return "mypage/point";
	}

	@RequestMapping("mypage/coupon")
	public String coupon_list(Model model) {
		model.addAttribute("id", "qwer");
		pays = new CouponService();
		pays.execute(sqlSession, model);

		return "mypage/coupon";
	}

	@PostMapping("payment/payment")
	public String pay_statement(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		model.addAttribute("id", "qwer");
		pays = new Payment();
		pays.execute(sqlSession, model);

		return "payment/payment";
	}

	@PostMapping("payment/coupon_list")
	public String use_coupon(HttpServletRequest request, Model model) {
		model.addAttribute("id", "qwer");
		pays = new CouponService();
		pays.execute(sqlSession, model);
		return "payment/coupon_list";

	}

}
