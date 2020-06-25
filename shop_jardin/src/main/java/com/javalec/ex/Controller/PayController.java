package com.javalec.ex.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Service.MypageService.MypageService;
import com.javalec.ex.Service.PayService.PayService;

@Controller
public class PayController {

	@Autowired
	SqlSession sqlSession;

	@Inject
	PayService payservice;
	@Inject
	MypageService mypageService;

	// 상품구매 주문페이지로
	@RequestMapping("payment/payment")
	public String buy_selected(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");
		String[] cart_check = request.getParameterValues("cart_check");

		// 장바구니에서 넘어온 제품정보
		model.addAttribute("from_cart", payservice.go_order(cart_check));
		// 주문자정보
		MDao mDao = sqlSession.getMapper(MDao.class);
		Member_Dto mDto = mDao.login1(id);
		model.addAttribute("buyer_info", mDto);
//		model.addAttribute("usable_coupon", payservice.buyer_info(id));
		// 사용가능한 쿠폰 갯수
		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		// 포인트정보
		model.addAttribute("usable_point", mypageService.usable_point(id));

		return "payment/payment";
	}

	// 주문자 정보 회원정보에 반영
	@RequestMapping("payment/change_member")
	@ResponseBody
	public void change_member(HttpServletRequest request, Member_Dto member_Dto, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");
		member_Dto.setId(id);

		model.addAttribute("change_check", payservice.update_member(member_Dto));
		model.addAttribute("member_info", member_Dto);

	}

	// 쿠폰리스트 가져오기
	@RequestMapping("payment/coupon_list")
	public String use_coupon(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");

		String[] cart_code = request.getParameterValues("cart_code");
		model.addAttribute("cart_code", payservice.go_order(cart_code));
		model.addAttribute("ucoupon_list", mypageService.ucou_list(id));

		return "payment/coupon_list";
	}

	// 주문 확정
	@PostMapping("payment/order_confirmation")
	public String order_confirmation(HttpServletRequest request, BuyerDto buyerDto, PaymentDto paymentDto, Model model)
			throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_mem");
		String[] cart_code = request.getParameterValues("cart_code");

		// 주문서 생성
		payservice.make_order(paymentDto);
		// 주문번호 가져오기
		String pay_code = payservice.get_paycode(id);
		// 주문서 전체 가져오기
		model.addAttribute("payment", payservice.get_payment(pay_code));
		// 수취인 등록
		payservice.make_buyer(buyerDto);
		// 주문물품 등록
		payservice.sold_product(pay_code, id, cart_code);
		// 쿠폰사용 등록
		if (paymentDto.getCou_num() != null) {
			payservice.update_coupon(paymentDto.getCou_num());
		}
		// 포인트 적립
		payservice.plus_point(id, paymentDto.getEarn_point(), pay_code);
		// 사용포인트 차감
		payservice.minus_point(id, paymentDto.getPay_point(), pay_code);
		// 재고 차감
		payservice.update_stock(cart_code);

		model.addAttribute("id", "qwer");
		model.addAttribute("cart_code", cart_code);
		model.addAttribute("buyer", buyerDto);
		model.addAttribute("order", paymentDto);

		return "payment/order_confirmation";
	}

}
