package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.PayDto.CartDto;

public interface PayDao {

	// 장바구니 보기
	public ArrayList<CartDto> cart_view(String id);

}
