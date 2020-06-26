package com.javalec.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.Coupon_listDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.javalec.ex.Dao.PayDao";

	// 적립포인트 리스트,총액
	@Override
	public List<PointDto> point_list(String id) throws Exception {

		return sqlSession.selectList(namespace + ".point_list", id);
	}

	@Override
	public int point_sum(String id) throws Exception {

		return sqlSession.selectOne(namespace + ".point_sum", id);
	}

	// 사용포인트 리스트,총액
	@Override
	public List<Use_pointDto> upoint_list(String id) throws Exception {

		return sqlSession.selectList(namespace + ".upoint_list", id);
	}

	@Override
	public int upoint_sum(String id) throws Exception {

		return sqlSession.selectOne(namespace + ".upoint_sum", id);
	}

	// 사용가능 포인트
	@Override
	public int usable_point(String id) throws Exception {

		return sqlSession.selectOne(namespace + ".usable_point", id);
	}

	// 사용가능한 쿠폰리스트
	@Override
	public List<Coupon_listDto> ucou_list(String id) throws Exception {

		return sqlSession.selectList(namespace + ".ucou_list", id);
	}

	// 사용가능 쿠폰갯수
	@Override
	public int usable_coupon(String id) throws Exception {

		return sqlSession.selectOne(namespace + ".usable_coupon", id);
	}

	// 사용불가능한 쿠폰리스트
	@Override
	public List<Coupon_listDto> ncou_list(String id) throws Exception {

		return sqlSession.selectList(namespace + ".ncou_list", id);
	}

	// 장바구니 리스트
	@Override
	public List<CartDto> cart_view(String id) throws Exception {

		return sqlSession.selectList(namespace + ".cart_view", id);
	}

	// 장바구니 수량변경
	@Override
	public void change_amount(CartDto cartDto) throws Exception {
		sqlSession.update(namespace + ".change_amount", cartDto);

	}

	// 장바구니 삭제
	@Override
	public int cart_del(String[] cart_code) throws Exception {

		return sqlSession.delete(namespace + ".cart_del", cart_code);
	}

	@Override
	public List<PaymentDto> payment_list(String id) throws Exception {

		return sqlSession.selectList(namespace + ".payment_list", id);
	}

}
