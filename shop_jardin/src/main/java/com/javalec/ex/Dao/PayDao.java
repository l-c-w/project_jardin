package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.Coupon_listDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

public interface PayDao {

	// 장바구니 보기
	public ArrayList<CartDto> cart_view(String id);

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

	// 작성중인 주문서 있는지 확인
	public String order_check(String id);

	// 주문서 생성
	public void make_order(String id, int total);

	// 주문서 가져오기(작성중인 리스트)
	public PaymentDto get_order(String id);

}
