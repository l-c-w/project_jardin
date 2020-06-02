package com.javalec.ex.Controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

@Controller
public class MController {

	@Autowired
	private SqlSession sqlsession;

	@RequestMapping("member/register_ok")
	public String register_ok(HttpServletRequest request, Member_Dto mdto, Model model) {

		String email = request.getParameter("email1") + "@" + request.getParameter("email2");

		String phone1 = request.getParameter("phone1") + request.getParameter("phone2")
				+ request.getParameter("phone3");

		int phone = Integer.parseInt(phone1);

		// String birth1 =
		// request.getParameter("birth1")+request.getParameter("birth2")+request.getParameter("birth3");

		// java.sql.Date birth = java.sql.Date.valueOf(birth1);

		MDao dao = sqlsession.getMapper(MDao.class);

		// dao.register(id, m_code, pw, email, email_agree, sms_agree, address1,
		// address2, phone, birth, sol_lun, introduce, coffee_favor);

		// dao.register(mdto.getId(), mdto.getM_code(), mdto.getPw(), email,
		// mdto.getEmail_agree(), mdto.getSms_agree(), mdto.getAddress1(),
		// mdto.getAddress2(), phone, mdto.getSol_lun(), mdto.getIntroduce());

		dao.register(mdto.getId(), mdto.getM_code(), mdto.getPw(), mdto.getName(), email, mdto.getEmail_agree()
				,mdto.getSms_agree(),mdto.getAddress1(),mdto.getAddress2(), phone, mdto.getSol_lun(),
				mdto.getIntroduce(), mdto.getCoffee_favor());

		return "member/step04";

	}

	// member

	@RequestMapping("member/step01")
	public String step01() {
		return "member/step01";
	}

	@RequestMapping("member/step02")
	public String step02() {
		return "member/step02";
	}

	@RequestMapping("member/step03")
	public String step03() {
		return "member/step03";
	}

	@RequestMapping("member/step04")
	public String step04() {
		return "member/step04";
	}

	@RequestMapping("member/idcheck")
	public String idcheck() {
		return "member/idcheck";
	}

	@RequestMapping("member/idcheck2")
	public String idcheck2() {
		return "member/idcheck2";
	}

	@RequestMapping("member/address_search")
	public String address_search() {
		return "member/address_search";
	}

	@RequestMapping("member/login")
	public String login() {
		return "member/login";
	}

	@RequestMapping("member/id_search")
	public String id_search() {
		return "member/id_search";
	}

}
