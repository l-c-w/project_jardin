package com.javalec.ex.Service.MypageService;

import java.util.List;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.Coupon_listDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

public interface MypageService {

	// 적립포인트 리스트,총액
	public List<PointDto> point_list(String id) throws Exception;

	public int point_sum(String id) throws Exception;

	// 사용포인트 리스트,총액
	public List<Use_pointDto> upoint_list(String id) throws Exception;

	public int upoint_sum(String id) throws Exception;

	// 사용가능 포인트
	public int usable_point(String id) throws Exception;

	// 사용가능한 쿠폰리스트
	public List<Coupon_listDto> ucou_list(String id) throws Exception;

	// 사용가능 쿠폰갯수
	public int usable_coupon(String id) throws Exception;

	// 사용불가능한 쿠폰리스트
	public List<Coupon_listDto> ncou_list(String id) throws Exception;

	// 장바구니 담기
	public int go_cart(CartDto cartDto) throws Exception;

	// 장바구니 리스트
	public List<CartDto> cart_view(String id) throws Exception;

	// 장바구니 수량변경
	public void change_amount(CartDto cartDto) throws Exception;

	// 장바구니 삭제
	public int cart_del(String[] cart_code) throws Exception;

	// 주문확인 페이지 리스트
	public List<PaymentDto> payment_list(String id) throws Exception;

}
