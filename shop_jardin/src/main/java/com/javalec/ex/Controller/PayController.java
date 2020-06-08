package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.PayDao;

@Controller
public class PayController {

	@Autowired
	private SqlSession sqlsession;

	// 카트 뷰 보기
	@RequestMapping("mypage/cart")
	public String cart_view(HttpServletRequest request, Model model) {

		String id = "qwer";
		PayDao payDao = sqlsession.getMapper(PayDao.class);
		model.addAttribute("list", payDao.cart_view(id));

		return "mypage/cart";
	}

}
