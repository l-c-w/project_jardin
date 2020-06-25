package com.javalec.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Dto.PayDto.BuyerDto;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

@Repository
public class PayDaoImpl implements PayDao {

	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.javalec.ex.Dao.PayDao";

	// 장바구니선택상품 주문페이지로 이동하기
	@Override
	public List<CartDto> go_order(String[] cart_code) throws Exception {

		return sqlSession.selectList(namespace + ".go_order", cart_code);
	}

	// 회원변경정보 반영
	@Override
	public int update_member(Member_Dto member_Dto) throws Exception {

		return sqlSession.update(namespace + ".update_member", member_Dto);
	}

	// 주문서 생성
	@Override
	public void make_order(PaymentDto paymentDto) throws Exception {
		sqlSession.insert(namespace + ".make_order", paymentDto);
	}

	// 주문번호 가져오기(작성중인 리스트)
	@Override
	public String get_paycode(String id) throws Exception {

		return sqlSession.selectOne(namespace + ".get_paycode", id);
	}

	// 주문서 전체 가져오기
	@Override
	public PaymentDto get_payment(String pay_code) throws Exception {

		return sqlSession.selectOne(namespace + ".get_payment", pay_code);
	}

	// 수취인 등록
	@Override
	public void make_buyer(BuyerDto buyerDto) throws Exception {
		sqlSession.insert(namespace + ".make_buyer", buyerDto);
	}

	// 주문물품 등록
	@Override
	public void sold_product(String pay_code, String id, String[] cart_code) throws Exception {
		sqlSession.insert(namespace, pay_code);

	}

	// 쿠폰사용 등록
	@Override
	public void update_coupon(String cou_num) throws Exception {
		sqlSession.update(namespace + ".update_coupon", cou_num);

	}

	// 포인트 적립
	@Override
	public void plus_point(String id, int plus_point, String pay_code) throws Exception {
//		sqlSession.insert(namespace+".plus_point", )

	}

	// 사용포인트 차감
	@Override
	public void minus_point(String id, int minus_pointm, String pay_code) throws Exception {
		// TODO Auto-generated method stub

	}

	// 재고 차감
	@Override
	public void update_stock(String[] cart_code) throws Exception {
		// TODO Auto-generated method stub

	}

}
