package com.javalec.ex.Service.MypageService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.MypageDao;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.Coupon_listDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;
import com.javalec.ex.Dto.PayDto.PointDto;
import com.javalec.ex.Dto.PayDto.Use_pointDto;

@Service
public class MypageServiceImpl implements MypageService {

	@Inject
	MypageDao mypageDao;

	// 적립포인트 리스트,총액
	@Override
	public List<PointDto> point_list(String id) throws Exception {

		return mypageDao.point_list(id);
	}

	@Override
	public int point_sum(String id) throws Exception {

		return mypageDao.point_sum(id);
	}

	// 사용포인트 리스트,총액
	@Override
	public List<Use_pointDto> upoint_list(String id) throws Exception {

		return mypageDao.upoint_list(id);
	}

	@Override
	public int upoint_sum(String id) throws Exception {

		return mypageDao.upoint_sum(id);
	}

	// 사용가능 포인트
	@Override
	public int usable_point(String id) throws Exception {

		return mypageDao.usable_point(id);
	}

	// 사용가능한 쿠폰리스트
	@Override
	public List<Coupon_listDto> ucou_list(String id) throws Exception {

		return mypageDao.ucou_list(id);
	}

	// 사용가능 쿠폰갯수
	@Override
	public int usable_coupon(String id) throws Exception {

		return mypageDao.usable_coupon(id);
	}

	// 사용불가능한 쿠폰리스트
	@Override
	public List<Coupon_listDto> ncou_list(String id) throws Exception {

		return mypageDao.ncou_list(id);
	}

	// 장바구니 담기
	@Override
	public int go_cart(CartDto cartDto) throws Exception {

		return mypageDao.go_cart(cartDto);
	}

	// 장바구니 리스트
	@Override
	public List<CartDto> cart_view(String id) throws Exception {

		return mypageDao.cart_view(id);
	}

	// 장바구니 수량변경
	@Override
	public void change_amount(CartDto cartDto) throws Exception {
		mypageDao.change_amount(cartDto);
	}

	// 장바구니 삭제
	@Override
	public int cart_del(String[] cart_code) throws Exception {

		return mypageDao.cart_del(cart_code);
	}

	@Override
	public List<PaymentDto> payment_list(String id) throws Exception {

		return mypageDao.payment_list(id);
	}

}
