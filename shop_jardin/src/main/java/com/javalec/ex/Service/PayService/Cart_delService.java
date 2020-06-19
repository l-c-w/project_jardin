package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;

public class Cart_delService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		String del_type = (String) map.get("del_type");
		String[] del = (String[]) map.get("cart_code1");
		String del2 = (String) map.get("cart_code2");
		PayDao payDao = sqlSession.getMapper(PayDao.class);

		switch (del_type) {
		case "sel_del":
			for (int i = 0; i < del.length; i++) {
				payDao.cart_del(del[i]);
			}
			break;
		case "del_one":
			payDao.cart_del(del2);

		default:
			break;
		}

	}

}
