package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Service.PayService.PayService;
import com.javalec.ex.Service.PayService.Payment;

@Controller
public class PayController {

	@Autowired
	private SqlSession sqlsession;

	PayService pays = null;

	// 카트 뷰 보기
	@RequestMapping("mypage/cart")
	public String cart_view(HttpServletRequest request, Model model) {

		String id = "qwer";
		PayDao payDao = sqlsession.getMapper(PayDao.class);
		model.addAttribute("list", payDao.cart_view(id));

		return "mypage/cart";
	}

	@PostMapping("payment/payment")
	public String pay_statement(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		pays = new Payment();
		pays.execute(sqlsession, model);

		return "payment/payment";
	}

}
