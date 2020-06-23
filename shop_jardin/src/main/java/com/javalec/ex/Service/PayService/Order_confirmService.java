package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

public class Order_confirmService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		String id = (String) map.get("id");
		String[] cart_code = (String[]) map.get("cart_code");
		BuyerDto buyerDto = (BuyerDto) map.get("buyer");
		buyerDto.setId(id);
		PaymentDto paymentDto = (PaymentDto) map.get("order");
		paymentDto.setId(id);

		// 주문서 입력
		payDao.make_order(paymentDto);
		// 주문번호 가져오기
		String pay_code = payDao.get_paycode(id);
		// 수취인 입력
		buyerDto.setPay_code(pay_code);
		payDao.make_buyer(buyerDto);
		// 물품 등록
		for (int i = 0; i < cart_code.length; i++) {
			payDao.sold_product(pay_code, id, cart_code[i]);
		}
		// 사용쿠폰 업데이트
		if (paymentDto.getCou_num() != null) {
			payDao.update_coupon(paymentDto.getCou_num());
		}

		// 포인트 적립
		payDao.plus_point(id, paymentDto.getEarn_point(), pay_code);

		// 포인트 차감
		payDao.minus_point(id, paymentDto.getPay_point(), pay_code);

		System.out.println("여기까지 등록 완료");

//		System.out.println("----------------------------------------------");
//		System.out.println("<대상제품>");
//		for (int i = 0; i < cart_code.length; i++) {
//			System.out.println("카트물건" + i + ": " + cart_code[i]);
//		}
//		System.out.println("----------------------------------------------");
//		System.out.println("<수취인 정보>");
//		System.out.println("이름: " + buyerDto.getName());
//		System.out.println("이메일1: " + buyerDto.getEmail1());
//		System.out.println("이메일2: " + buyerDto.getEmail2());
//		System.out.println("우편번호: " + buyerDto.getDel_post());
//		System.out.println("주소1: " + buyerDto.getDel_address1());
//		System.out.println("주소2: " + buyerDto.getDel_address2());
//		System.out.println("폰1: " + buyerDto.getDel_phone1());
//		System.out.println("폰2: " + buyerDto.getDel_phone2());
//		System.out.println("폰3: " + buyerDto.getDel_phone3());
//		System.out.println("요구사항: " + buyerDto.getDel_demand());
//		System.out.println("----------------------------------------------");
//		System.out.println("<주문서 내용>");
//		System.out.println("쿠폰할인: " + paymentDto.getCou_discount());
//		System.out.println("쿠폰번호: " + paymentDto.getCou_num());
//		System.out.println("배송비: " + paymentDto.getDel_price());
//		System.out.println("결제방법: " + paymentDto.getPay_method());
//		System.out.println("사용포인트: " + paymentDto.getPay_point());
//		System.out.println("결제예정금액: " + paymentDto.getTotal_price());

	}

}
