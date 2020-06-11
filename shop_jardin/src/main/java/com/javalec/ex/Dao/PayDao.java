package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

public interface PayDao {

	// 장바구니 보기
	public ArrayList<CartDto> cart_view(String id);

	// 장바구니선택상품 주문페이지로 이동하기

	public CartDto go_order(String cart);

	public PaymentDto make_order(String id, int total);

}
