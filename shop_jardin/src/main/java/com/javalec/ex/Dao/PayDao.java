package com.javalec.ex.Dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.Coupon_listDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

public interface PayDao {

	// 장바구니 보기
	public ArrayList<CartDto> cart_view(String id);

	// 장바구니 수량변경
	public void change_amount(@Param("p2") String cart_code, @Param("p1") String amount);

	// 장바구니 삭제
	public void cart_del(String cart_code);

	// 장바구니선택상품 주문페이지로 이동하기
	public CartDto go_order(String id, String cart);

	// 적립포인트 리스트,총액
	public ArrayList<PointDto> point_list(String id);

	public int point_sum(String id);

	// 사용포인트 리스트,총액
	public ArrayList<Use_pointDto> upoint_list(String id);

	public int upoint_sum(String id);

	// 사용가능 포인트
	public int usable_point(String id);

	// 사용가능한 쿠폰리스트
	public ArrayList<Coupon_listDto> ucou_list(String id);

	// 사용가능 쿠폰갯수
	public int usable_coupon(String id);

	// 사용불가능한 쿠폰리스트
	public ArrayList<Coupon_listDto> ncou_list(String id);

	// 회원변경정보 반영
	public void update_member(Member_Dto member_Dto);

	// 주문서 생성
	public void make_order(PaymentDto paymentDto);

	// 주문번호 가져오기(작성중인 리스트)
	public String get_paycode(String id);

	// 수취인 등록
	public void make_buyer(BuyerDto buyerDto);

	// 주문물품 등록
	public void sold_product(String pay_code, String id, String cart_code);

	// 쿠폰사용 등록
	public void update_coupon(String cou_num);

	// 포인트 적립
	public void plus_point(String id, String plus_point, String pay_code);

	// 사용포인트 차감
	public void minus_point(String id, int minus_pointm, String pay_code);

	// 재고 차감
	public void update_stock(String cart_code);

}
