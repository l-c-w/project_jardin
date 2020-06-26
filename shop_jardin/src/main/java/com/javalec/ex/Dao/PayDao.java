package com.javalec.ex.Dao;

import java.util.List;
import java.util.Map;

import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.Sold_productsDto;

public interface PayDao {

	// 장바구니선택상품 주문페이지로 이동하기
	public List<CartDto> go_order(String[] catr_code) throws Exception;

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

	// 장바구니 코드로 정보 가져오기
	public CartDto get_sold_info(String cart_code) throws Exception;

	// 주문물품 등록
	public void sold_product(Sold_productsDto sold_productsDto) throws Exception;

	// 쿠폰사용 등록
	public void update_coupon(String cou_num) throws Exception;

	// 포인트 적립
	public void plus_point(PaymentDto paymentDto) throws Exception;

	// 사용포인트 차감
	public void minus_point(PaymentDto paymentDto) throws Exception;

	// 재고 차감
	public void update_stock(Map<String, Object> map) throws Exception;

}
