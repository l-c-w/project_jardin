package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;

public class Cart_upddateService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		String cart_code = (String) map.get("cart_code");
		String amount = (String) map.get("amount_");
		payDao.change_amount(cart_code, amount);

	}

}
