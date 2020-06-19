package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;

public class CouponService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		String id = (String) map.get("id");

		PayDao payDao = sqlSession.getMapper(PayDao.class);

//		model.addAttribute("ucoupon_list", payDao.ucou_list(id));
//		model.addAttribute("usable_coupon", payDao.usable_coupon(id));
//		model.addAttribute("ncoupon_list", payDao.ncou_list(id));
//		model.addAttribute("usable_point", payDao.usable_point(id));
	}

}
