package com.javalec.ex.Service.PayService;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.PayDto.CartDto;

public class Payment implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		// 사용할 객체들 선언
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		MDao mDao = sqlSession.getMapper(MDao.class);
		HttpSession session = request.getSession();

		ArrayList<CartDto> list = new ArrayList<CartDto>();
		CartDto cartDto = new CartDto();
		// 총금액
		int total = 0;
		// 배송비
		int pay_del = 0;
		// 아이디 가져오기
		String id = (String) map.get("id");

		// 구매방법별 분기
		String buy_type = request.getParameter("buy_type");
		System.out.println(buy_type);
		switch (buy_type) {
		// 제품상세에서 바로 구매
		case "buy_product":

			break;
		// 카트에서 한개만 구매
		case "buy_one":
			String cart_one = request.getParameter("cart_code");
			cartDto = payDao.go_order(id, cart_one);
			list.add(cartDto);
			total = cartDto.getP_price() * cartDto.getAmount();
			break;
		// 카트에서 다수 선택 및 전체선택 구매
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
		// 배송비 계산
		if (total >= 30000) {
			pay_del = 0;
		} else {
			pay_del = 2500;
		}

		// 장바구니에서 넘어온 제품정보
		model.addAttribute("from_cart", list);
		// 주문자정보
		model.addAttribute("buyer_info", mDao.login1(id));
		// 사용가능한 쿠폰 갯수
		model.addAttribute("usable_coupon", payDao.usable_coupon(id));
		// 포인트정보
		model.addAttribute("usable_point", payDao.usable_point(id));
		// 보낼거 마저 만들기

	}

}
