package com.javalec.ex.Service.PayService;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.PayDto.CartDto;

public class Payment implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		MDao mDao = sqlSession.getMapper(MDao.class);

		String id = (String) map.get("id");
		String buy_type = request.getParameter("buy_type");
		System.out.println(buy_type);

		ArrayList<CartDto> list = new ArrayList<CartDto>();
		CartDto cartDto = new CartDto();
		int total = 0;

		switch (buy_type) {

		case "buy_product":

			break;

		case "buy_one":
			String cart_one = request.getParameter("cart_code");
			System.out.println(cart_one);
			cartDto = payDao.go_order(id, cart_one);
			list.add(cartDto);
			total = cartDto.getP_price() * cartDto.getAmount();
			break;

		case "buy_selected":
			String[] cart_selected = request.getParameterValues("cart_check");
			for (int i = 0; i < cart_selected.length; i++) {
				cartDto = payDao.go_order(id, cart_selected[i]);
				list.add(cartDto);
				total = total + cartDto.getP_price() * cartDto.getAmount();
			}
			break;

		default:
			break;
		}

		// 장바구니에서 넘어온 제품정보
		model.addAttribute("from_cart", list);
		// 주문서 생성
		payDao.make_order(id, total);
		// 주문서 가져오기
		model.addAttribute("get_order", payDao.get_order(id));
		// 주문자정보
		model.addAttribute("buyer_info", mDao.login1(id));
		// 사용가능한 쿠폰 갯수
		model.addAttribute("usable_coupon", payDao.usable_coupon(id));
		// 포인트정보
		model.addAttribute("usable_point", payDao.usable_point(id));
		// 보낼거 마저 만들기

	}

}
