package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;

public class PointService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		PayDao payDao = sqlSession.getMapper(PayDao.class);
		Map<String, Object> map = model.asMap();

		String id = (String) map.get("id");

		model.addAttribute("point_list", payDao.point_list(id));
		model.addAttribute("point_sum", payDao.point_sum(id));
		model.addAttribute("usepoint_list", payDao.upoint_list(id));
		model.addAttribute("usepoint_sum", payDao.upoint_sum(id));
		model.addAttribute("usable_point", payDao.usable_point(id));

	}

}
