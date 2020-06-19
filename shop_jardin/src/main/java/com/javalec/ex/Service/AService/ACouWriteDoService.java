package com.javalec.ex.Service.AService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.ACDao;

public class ACouWriteDoService implements AService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		System.out.println("--------------------ACouWriteDoService--------------------");
		
		ACDao acdao = sqlSession.getMapper(ACDao.class);
		String e_code = request.getParameter("e_code");
		String cou_name = request.getParameter("cou_name");
		String benefit = request.getParameter("benefit");
		String persent_temp = request.getParameter("persent");
		String price_temp = request.getParameter("price");
		String cou_limit_temp = request.getParameter("cou_limit");
		double cou_reward = 0;
		double persent = 0;
		int cou_limit = 0;
		System.out.println("persent_temp : " + persent_temp);
		System.out.println("price_temp : " + price_temp);
		System.out.println("cou_limit_temp : " + cou_limit_temp);
		String cou_date = request.getParameter("cou_date");
		String cou_start1 = request.getParameter("cou_start1"); // 기간설정
		String cou_start2 = request.getParameter("cou_start2"); // 기간설정
		String cou_end1 = request.getParameter("cou_end1"); // 기간설정
		String cou_end2 = request.getParameter("cou_end2"); // 기간설정
		String cou_end2_1 = request.getParameter("cou_end2_1"); // 쿠폰 발급일 기준
		String cou_end2_2 = request.getParameter("cou_end2_2"); // 쿠폰 발급일 기준
		System.out.println("cou_start1 : " + cou_start1);
		System.out.println("cou_end2_1 : " + cou_end2_1);
		System.out.println("cou_end2_2 : " + cou_end2_2);
		String cou_exp_temp = request.getParameter("cou_exp");
		String p_category = request.getParameter("p_category");
		String cou_start = "";
		String cou_end = "";
		int cou_exp = 0;

		// 혜택구분
		switch (benefit) {
		case "dis_per":
			persent = Double.parseDouble(persent_temp);
			cou_reward = persent / 100.0;
			System.out.println("dis_per cou_reward : " + cou_reward);
			model.addAttribute("cou_reward", cou_reward);
			break;
		case "dis_pri":
			cou_reward = Integer.parseInt(price_temp);
			model.addAttribute("cou_reward", cou_reward);
			System.out.println("cou_reward" + cou_reward);
			break;
		default:
			break;
		}

		// 사용 기간 설정
		if (cou_date.equals("issued")) { // 쿠폰 발급일 기준
			cou_end2_1 = cou_end2_1.replaceAll("-", "");
			cou_end2_2 = cou_end2_2 + "0000";
			cou_start = "sysdate";
			cou_end = cou_end2_1 + cou_end2_2;
			System.out.println("중간1 cou_end : " + cou_end);
		}else if (cou_date.equals("period")) { // 기간설정
			cou_start1 = cou_start1.replaceAll("-", "");
			cou_start2 = cou_start2 + "0000";
			cou_start = cou_start1 + cou_start2;
			cou_end1 = cou_end1.replaceAll("-", "");
			cou_end2 = cou_end2 + "0000";
			cou_end = cou_end1 + cou_end2;
			System.out.println("중간2 cou_end : " + cou_end);
		}

		// 쿠폰 적용 구분
		switch (p_category) {
		case "p_ca_all":
			// 모두적용

			break;
		default:
			break;
		}

		cou_limit = Integer.parseInt(cou_limit_temp);
		cou_exp = Integer.parseInt(cou_exp_temp);
		
		acdao.coupon_write(e_code, cou_name, cou_reward, cou_limit, cou_start, cou_end, cou_exp);
		
		//확인용.  지워야함
		model.addAttribute("e_code", e_code);
		model.addAttribute("cou_name", cou_name);
//		model.addAttribute("cou_reward", cou_reward);
		model.addAttribute("cou_limit", cou_limit);
		model.addAttribute("cou_start", cou_start);
		model.addAttribute("cou_end", cou_end);
		model.addAttribute("cou_exp", cou_exp);
		model.addAttribute("p_category", p_category);

		// log
		System.out.println("e_code : " + e_code);
		System.out.println("cou_name : " + cou_name);
		System.out.println("benefit : " + benefit);
		System.out.println("cou_limit : " + cou_limit);
		System.out.println("cou_start : " + cou_start);
		System.out.println("cou_end : " + cou_end);
		System.out.println("cou_exp : " + cou_exp);
		System.out.println("p_category : " + p_category);

	}

}
