package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;

public class Cart_delService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		String[] del = (String[]) map.get("cart_code");
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		if (del != null) {
			for (int i = 0; i < del.length; i++) {
				payDao.cart_del(del[i]);
			}
		} else {
			String del2 = (String) map.get("cart_code2");
			payDao.cart_del(del2);
		}
	}

}
