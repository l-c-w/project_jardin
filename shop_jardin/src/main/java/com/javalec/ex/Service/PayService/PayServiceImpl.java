package com.javalec.ex.Service.PayService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

@Service
public class PayServiceImpl implements PayService {

	@Inject
	PayDao payDao;

	// 장바구니 선택상품 주문페이지로 옮기기
	@Override
	public List<CartDto> go_order(String[] cart_code) throws Exception {
		return payDao.go_order(cart_code);
	}

//	// 회원정보 가져오기
//	@Override
//	public Member_Dto buyer_info(String id) throws Exception {
//		return mDao.login1(id);
//	}

	// 회원변경정보 반영
	@Override
	public int update_member(Member_Dto member_Dto) throws Exception {
		String email = member_Dto.getEmail() + "@" + member_Dto.getIntroduce();
		member_Dto.setEmail(email);
		System.out.println(member_Dto.getName());
		return payDao.update_member(member_Dto);
	}

	// 주문서 생성
	@Override
	public void make_order(PaymentDto paymentDto) throws Exception {
		payDao.make_order(paymentDto);
	}

	// 주문번호 가져오기(작성중인 리스트)
	@Override
	public String get_paycode(String id) throws Exception {

		return payDao.get_paycode(id);
	}

	// 주문서 전체 가져오기
	@Override
	public PaymentDto get_payment(String pay_code) throws Exception {

		return payDao.get_payment(pay_code);
	}

	// 수취인 등록
	@Override
	public void make_buyer(BuyerDto buyerDto) throws Exception {

		payDao.make_buyer(buyerDto);
	}

	// 주문물품 등록
	@Override
	public void sold_product(String pay_code, String id, String[] cart_code) throws Exception {

		payDao.sold_product(pay_code, id, cart_code);
	}

	// 쿠폰사용 등록
	@Override
	public void update_coupon(String cou_num) throws Exception {

		payDao.update_coupon(cou_num);
	}

	// 포인트 적립
	@Override
	public void plus_point(String id, int plus_point, String pay_code) throws Exception {

		payDao.plus_point(id, plus_point, pay_code);
	}

	// 사용포인트 차감
	@Override
	public void minus_point(String id, int minus_pointm, String pay_code) throws Exception {

		payDao.minus_point(id, minus_pointm, pay_code);
	}

	// 재고 차감
	@Override
	public void update_stock(String[] cart_code) throws Exception {

		payDao.update_stock(cart_code);
	}

}
