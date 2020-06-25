package com.javalec.ex.Service.PayService;

import java.util.List;

import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

public interface PayService {

	// 장바구니 선택상품 주문페이지로 옮기기
	public List<CartDto> go_order(String[] cart_code) throws Exception;

//	// 회원정보 가져오기
//	public Member_Dto buyer_info(String id) throws Exception;

	// 회원변경정보 반영
	public int update_member(Member_Dto member_Dto) throws Exception;

	// 주문서 생성
	public void make_order(PaymentDto paymentDto) throws Exception;

	// 주문번호 가져오기(작성중인 리스트)
	public String get_paycode(String id) throws Exception;

	// 주문서 전체 가져오기
	public PaymentDto get_payment(String pay_code) throws Exception;

	// 수취인 등록
	public void make_buyer(BuyerDto buyerDto) throws Exception;

	// 주문물품 등록
	public void sold_product(String pay_code, String id, String[] cart_code) throws Exception;

	// 쿠폰사용 등록
	public void update_coupon(String cou_num) throws Exception;

	// 포인트 적립
	public void plus_point(String id, int plus_point, String pay_code) throws Exception;

	// 사용포인트 차감
	public void minus_point(String id, int minus_pointm, String pay_code) throws Exception;

	// 재고 차감
	public void update_stock(String[] cart_code) throws Exception;
}
