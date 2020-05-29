package com.javalec.ex;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Temp_controller {

	@RequestMapping("header")
	public String header() {
		return "main/header";
	}

	@RequestMapping("footer")
	public String footer() {
		return "footer";
	}

	@RequestMapping("main/main")
	public String main() {
		return "main/main";
	}

	@RequestMapping("community/comment_list")
	public String comment_list() {
		return "community/comment_list";
	}

	@RequestMapping("community/comment_view")
	public String comment_view() {
		return "community/comment_view";
	}

	@RequestMapping("community/comment_write")
	public String comment_write() {
		return "community/comment_write";
	}

	@RequestMapping("community/enjoy_list")
	public String enjoy_list() {
		return "community/enjoy_list";
	}

	@RequestMapping("community/enjoy_view")
	public String enjoy_view() {
		return "community/enjoy_view";
	}

	@RequestMapping("community/epilogue_list")
	public String epilogue_list() {
		return "community/epilogue_list";
	}

	@RequestMapping("community/epilogue_view")
	public String epilogue_view() {
		return "community/epilogue_view";
	}

	@RequestMapping("community/epilogue_write")
	public String epilogue_write() {
		return "community/epilogue_write";
	}

	@RequestMapping("community/expr_list")
	public String expr_list() {
		return "community/expr_list";
	}

	@RequestMapping("community/expr_review")
	public String expr_review() {
		return "community/expr_review";
	}

	@RequestMapping("community/expr_view")
	public String expr_view() {
		return "community/expr_view";
	}

	// customer

	@RequestMapping("customer/faq")
	public String faq() {
		return "customer/faq";
	}

	@RequestMapping("customer/guide")
	public String guide() {
		return "customer/guide";
	}

	@RequestMapping("customer/inquiry")
	public String inquiry() {
		return "customer/inquiry";
	}

	@RequestMapping("customer/notice_list")
	public String notice_list() {
		return "customer/notice_list";
	}

	@RequestMapping("customer/notice_view")
	public String notice_view() {
		return "customer/notice_view";
	}

	// email

	@RequestMapping("email/delivery")
	public String delivery() {
		return "email/delivery";
	}

	@RequestMapping("email/id")
	public String id() {
		return "email/id";
	}

	@RequestMapping("email/join")
	public String join() {
		return "email/join";
	}

	@RequestMapping("email/password")
	public String password() {
		return "email/password";
	}

	@RequestMapping("email/paymentmail")
	public String paymentmail() {
		return "email/paymentmail";
	}

	@RequestMapping("email/refundmail")
	public String refundmail() {
		return "email/refundmail";
	}

	@RequestMapping("event/event_list")
	public String event_list() {
		return "event/event_list";
	}

	@RequestMapping("event/event_view")
	public String event_view() {
		return "event/event_view";
	}

	@RequestMapping("event/fin_event_list")
	public String fin_event_list() {
		return "event/fin_event_list";
	}

	@RequestMapping("event/fin_event_view")
	public String fin_event_view() {
		return "event/fin_event_view";
	}

	@RequestMapping("event/password_check")
	public String password_check() {
		return "event/password_check";
	}

	@RequestMapping("event/prizewinner_list")
	public String prizewinner_list() {
		return "event/prizewinner_list";
	}

	@RequestMapping("event/prizewinner_view")
	public String prizewinner_view() {
		return "event/prizewinner_view";
	}

	// member

	@RequestMapping("member/step01")
	public String step01() {
		return "member/step01";
	}

	@RequestMapping("member/step02")
	public String step02() {
		return "member/step02";
	}

	@RequestMapping("member/step03")
	public String step03() {
		return "member/step03";
	}

	@RequestMapping("member/step04")
	public String step04() {
		return "member/step04";
	}

	@RequestMapping("member/login")
	public String login() {
		return "member/login";
	}

	@RequestMapping("member/id_search")
	public String id_search() {
		return "member/id_search";
	}

	@RequestMapping("member/address_search")
	public String address_search() {
		return "member/address_search";
	}
	
	//mypage
	
	@RequestMapping("mypage/cart")
	public String cart() {
		return "mypage/cart";
	}
	
	@RequestMapping("mypage/change_info")
	public String change_info() {
		return "mypage/change_info";
	}
	
	@RequestMapping("mypage/coupon")
	public String coupon() {
		return "mypage/coupon";
	}
	
	@RequestMapping("mypage/get_leave")
	public String get_leave() {
		return "mypage/get_leave";
	}
	
	@RequestMapping("mypage/inquiry_list")
	public String inquiry_list() {
		return "mypage/inquiry_list";
	}
	
	@RequestMapping("mypage/inquiry_view")
	public String inquiry_view() {
		return "mypage/inquiry_view";
	}
	
	@RequestMapping("mypage/inquiry_write")
	public String inquiry_write() {
		return "mypage/inquiry_write";
	}
	
	@RequestMapping("mypage/option")
	public String option() {
		return "mypage/option";
	}
	
	@RequestMapping("mypage/ordercheck")
	public String ordercheck() {
		return "mypage/ordercheck";
	}
	
	@RequestMapping("mypage/password_change")
	public String password_change() {
		return "mypage/password_change";
	}
	
	@RequestMapping("mypage/point")
	public String point() {
		return "mypage/point";
	}
	
	@RequestMapping("mypage/reason")
	public String reason() {
		return "mypage/reason";
	}
	
	@RequestMapping("mypage/refund")
	public String refund() {
		return "mypage/refund";
	}
	
	@RequestMapping("mypage/takeback_delivery")
	public String takeback_delivery() {
		return "mypage/takeback_delivery";
	}
	
	@RequestMapping("mypage/takeback_state")
	public String takeback_state() {
		return "mypage/takeback_state";
	}
	
	@RequestMapping("mypage/wishlist")
	public String wishlist() {
		return "mypage/wishlist";
	}
	
		
	
	// nomember

	@RequestMapping("nomember/no_cart")
	public String no_cart() {
		return "nomember/no_cart";
	}

	@RequestMapping("nomember/no_ordercheck")
	public String no_ordercheck() {
		return "nomember/no_ordercheck";
	}

	@RequestMapping("nomember/no_takeback_delivery")
	public String no_takeback_delivery() {
		return "nomember/no_takeback_delivery";
	}

	@RequestMapping("nomember/no_takeback_state")
	public String no_takeback_state() {
		return "nomember/no_takeback_state";
	}
	
	//payment
	
	@RequestMapping("payment/coupon_list")
	public String coupon_list() {
		return "payment/coupon_list";
	}
	
	@RequestMapping("payment/order_confirmation")
	public String order_confirmation() {
		return "payment/order_confirmation";
	}
	
	@RequestMapping("payment/order_statement")
	public String order_statement() {
		return "payment/order_statement";
	}
	
	@RequestMapping("payment/payment")
	public String payment() {
		return "payment/payment";
	}
	
	//product
	
	
	@RequestMapping("product/p_inquiry")
	public String p_inquiry() {
		return "product/p_inquiry";
	}
	
	@RequestMapping("product/p_detail")
	public String p_detail() {
		return "product/p_detail";
	}
	
	@RequestMapping("product/p_list")
	public String p_list() {
		return "product/p_list";
	}
	
	@RequestMapping("product/review")
	public String review() {
		return "product/review";
	}
	
	@RequestMapping("product/search")
	public String search() {
		return "product/search";
	}

	
	

}
