package com.javalec.ex.Service.PayService;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.PayDto.CartDto;
import com.javalec.ex.Dto.PayDto.PaymentDto;

public class Payment implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		MDao mDao = sqlSession.getMapper(MDao.class);
		String[] cart = request.getParameterValues("cart_check");

		ArrayList<CartDto> list = new ArrayList<CartDto>();
		int total = 0;
		for (int i = 0; i < cart.length; i++) {
			CartDto cartDto = payDao.go_order(cart[i]);
			list.add(cartDto);
			total = total + cartDto.getPrice() * cartDto.getAmount();
		}
		String id = "test4";

		// 주문목록
		PaymentDto paymentDto = payDao.make_order(id, total);
		// 주문자정보
		// 쿠폰정보
		// 포인트정보

		// 보낼거 마저 만들기

	}

}
