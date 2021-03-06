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
import com.javalec.ex.Dto.PayDto.CartDto;
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

	// 상품페이지구매 주문페이지로
	@RequestMapping("payment/go_payment")
	public String go_payment(HttpSession session, CartDto cartDto, Model model) throws Exception {
		String id = (String) session.getAttribute("session_mem");
		cartDto.setId(id);
		mypageService.go_cart(cartDto);

		// 제품

		model.addAttribute("from_cart", mypageService.cart_view(id));

		System.out.println();
		// 주문자정보
		MDao mDao = sqlSession.getMapper(MDao.class);
		Member_Dto mDto = mDao.login1(id);
		model.addAttribute("buyer_info", mDto);
		// 사용가능한 쿠폰 갯수
		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		// 포인트정보
		model.addAttribute("usable_point", mypageService.usable_point(id));

		return "payment/payment";
	}

	// 카트상품구매 주문페이지로
	@RequestMapping("payment/payment")
	public String buy_selected(HttpServletRequest request, HttpSession session, String[] cart_check, CartDto cartDto,
			Model model) throws Exception {
		String id = (String) session.getAttribute("session_mem");

		// 제품정보
		model.addAttribute("from_cart", payservice.go_order(cart_check));
		// 주문자정보
		MDao mDao = sqlSession.getMapper(MDao.class);
		Member_Dto mDto = mDao.login1(id);
		model.addAttribute("buyer_info", mDto);
		// 사용가능한 쿠폰 갯수
		model.addAttribute("usable_coupon", mypageService.usable_coupon(id));
		// 포인트정보
		model.addAttribute("usable_point", mypageService.usable_point(id));

		return "payment/payment";
	}

	// 주문자 정보 회원정보에 반영
	@RequestMapping("payment/change_member")
	@ResponseBody
	public void change_member(HttpSession session, HttpServletRequest request, Member_Dto member_Dto, Model model)
			throws Exception {
		String id = (String) session.getAttribute("session_mem");
		member_Dto.setId(id);

		model.addAttribute("change_check", payservice.update_member(member_Dto));
	}

	// 쿠폰리스트 가져오기
	@RequestMapping("payment/coupon_list")
	public String use_coupon(HttpSession session, String[] cart_code, HttpServletRequest request, Model model)
			throws Exception {
		String id = (String) session.getAttribute("session_mem");

		model.addAttribute("cart_code", payservice.go_order(cart_code));
		model.addAttribute("ucoupon_list", mypageService.ucou_list(id));

		return "payment/coupon_list";
	}

	// 주문 확정
	@PostMapping("payment/order_confirmation")
	public String order_confirmation(HttpSession session, HttpServletRequest request, BuyerDto buyerDto,
			PaymentDto paymentDto, Model model) throws Exception {
		String id = (String) session.getAttribute("session_mem");
		paymentDto.setId(id);
		buyerDto.setId(id);
		String[] cart_code = request.getParameterValues("cart_code");

		// 주문서 생성
		payservice.make_order(paymentDto);
		// 주문번호 가져오기
		String pay_code = payservice.get_paycode(id);
		// 주문서 전체 가져오기
		paymentDto = payservice.get_payment(pay_code);
		model.addAttribute("payment", payservice.get_payment(pay_code));
		// 구입물품 가져오기
		model.addAttribute("order_product", payservice.go_order(cart_code));
		// 주문자정보
		MDao mDao = sqlSession.getMapper(MDao.class);
		Member_Dto mDto = mDao.login1(id);
		model.addAttribute("member_info", mDto);
		// 수취인정보
		model.addAttribute("buyer", buyerDto);
		// 주문정보
		model.addAttribute("order", paymentDto);

		// 수취인 등록
		buyerDto.setPay_code(pay_code);
		payservice.make_buyer(buyerDto);
		// 주문물품 등록
		payservice.sold_product(pay_code, id, cart_code);
		// 쿠폰사용 등록
		if (paymentDto.getCou_num() != null) {
			payservice.update_coupon(paymentDto.getCou_num());
		}
		// 포인트 적립
		payservice.plus_point(paymentDto);
		// 사용포인트 차감
		if (paymentDto.getEarn_point() > 0) {
			payservice.minus_point(paymentDto);
		}
		// 재고 차감
		payservice.update_stock(cart_code);
		// 장바구니에서 삭제하기
		mypageService.cart_del(cart_code);

		return "payment/order_confirmation";
	}

}
