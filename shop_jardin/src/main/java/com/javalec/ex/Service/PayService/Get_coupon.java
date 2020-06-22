package com.javalec.ex.Service.PayService;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.PayDto.CartDto;

public class Get_coupon implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		Map<String, Object> map = model.asMap();
		ArrayList<CartDto> list = new ArrayList<CartDto>();
		String id = (String) map.get("id");
		String[] cart_code = (String[]) map.get("cart_code");
		for (int i = 0; i < cart_code.length; i++) {
			list.add(payDao.go_order(id, cart_code[i]));
		}

		model.addAttribute("cart_code", list);
		model.addAttribute("ucoupon_list", payDao.ucou_list(id));
	}

}
