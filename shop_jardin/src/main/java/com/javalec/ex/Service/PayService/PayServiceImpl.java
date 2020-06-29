package com.javalec.ex.Service.PayService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.Sold_productsDto;

@Service
public class PayServiceImpl implements PayService {

	@Inject
	PayDao payDao;
	MDao mDao;

	// 상품페이지에서 바로 구매
	@Override
	public CartDto from_cart(String p_code) throws Exception {

		return payDao.from_cart(p_code);
	}

	// 바로구매 상품 id, amount, tempcart_code 넣기
	@Override
	public ArrayList<CartDto> get_item(CartDto cartDto) throws Exception {

		ArrayList<CartDto> list = new ArrayList<CartDto>();
		list.add(cartDto);

		return list;
	}

	// 장바구니 선택상품 주문페이지로 옮기기
	@Override
	public List<CartDto> go_order(String[] cart_code) throws Exception {
		return payDao.go_order(cart_code);
	}

	// 회원변경정보 반영
	@Override
	public int update_member(Member_Dto member_Dto) throws Exception {
		String email = member_Dto.getEmail() + "@" + member_Dto.getEmail2();
		member_Dto.setEmail(email);
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

	// 장바구니 코드로 정보 가져오기
	@Override
	public CartDto get_sold_info(String cart_code) throws Exception {

		return payDao.get_sold_info(cart_code);
	}

	// 주문물품 등록
	@Override
	public void sold_product(String pay_code, String id, String[] cart_code) throws Exception {
		Sold_productsDto sold_productsDto = new Sold_productsDto();
		sold_productsDto.setPay_code(pay_code);
		sold_productsDto.setId(id);
		for (int i = 0; i < cart_code.length; i++) {
			CartDto cartDto = payDao.get_sold_info(cart_code[i]);
			sold_productsDto.setP_code(cartDto.getP_code());
			sold_productsDto.setAmount(cartDto.getAmount());
			payDao.sold_product(sold_productsDto);
		}

	}

	// 쿠폰사용 등록
	@Override
	public void update_coupon(String cou_num) throws Exception {

		payDao.update_coupon(cou_num);
	}

	// 포인트 적립
	@Override
	public void plus_point(PaymentDto paymentDto) throws Exception {

		payDao.plus_point(paymentDto);
	}

	// 사용포인트 차감
	@Override
	public void minus_point(PaymentDto paymentDto) throws Exception {

		payDao.minus_point(paymentDto);
	}

	// 재고 차감
	@Override
	public void update_stock(String[] cart_code) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		for (int i = 0; i < cart_code.length; i++) {
			CartDto cartDto = payDao.get_sold_info(cart_code[i]);
			map.put("p_code", cartDto.getP_code());
			map.put("amount", cartDto.getAmount());
			payDao.update_stock(map);
		}
	}

}
