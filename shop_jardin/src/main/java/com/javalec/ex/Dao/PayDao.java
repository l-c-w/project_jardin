package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

public interface PayDao {

	// 장바구니 보기
	public ArrayList<CartDto> cart_view(String id);

	// 장바구니선택상품 주문페이지로 이동하기
	public CartDto go_order(String cart);

	public PaymentDto make_order(String id, int total);

	// 적립포인트 리스트,총액
	public ArrayList<PointDto> point_list(String id);

	public int point_sum(String id);

	// 사용포인트 리스트,총액
	public ArrayList<Use_pointDto> upoint_list(String id);

	public int upoint_sum(String id);

	// 사용가능 포인트
	public int usable_point(String id);
}
