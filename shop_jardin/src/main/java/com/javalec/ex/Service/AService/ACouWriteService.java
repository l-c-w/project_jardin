package com.javalec.ex.Service.AService;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public class ACouWriteService implements AService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

		String e_code = request.getParameter("e_code");
		String cou_name = request.getParameter("cou_name");
		String benefit = request.getParameter("benefit");
		double persent = Double.parseDouble(request.getParameter("persent"));
		int price = Integer.parseInt(request.getParameter("price"));
		String cou_exp = request.getParameter("cou_exp");
		String cou_start1 = request.getParameter("cou_start1"); // 기간설정
		String cou_start2 = request.getParameter("cou_start2"); // 기간설정
		String cou_end1 = request.getParameter("cou_end1"); // 기간설정
		String cou_end2 = request.getParameter("cou_end2"); // 기간설정
		String cou_end2_1 = request.getParameter("cou_end2_1"); // 쿠폰 발급일 기준
		String cou_end2_2 = request.getParameter("cou_end2_2"); // 쿠폰 발급일 기준
		String p_category = request.getParameter("p_category");
		
		
		// 혜택구분
		switch (benefit) {
		case "dis_per":
			persent = persent / 10.0;
			model.addAttribute("cou_reward", persent);
			break;
		case "dis_pri":
			model.addAttribute("cou_reward", price);
			break;
		default:
			break;
		}
		
		
		
		
		
		
		
		switch (p_category) {
		case "p_ca_all":
			//모두적용
			
			break;
		default:
			break;
		}
		
		
		String cou_limit = "";
		String cou_start = "";
		String cou_end = "";
		
		model.addAttribute("e_code", e_code);
		model.addAttribute("cou_name", cou_name);
//		model.addAttribute("cou_reward", cou_reward);
		model.addAttribute("cou_limit", cou_limit);
		model.addAttribute("cou_start", cou_start);
		model.addAttribute("cou_end", cou_end);
		model.addAttribute("cou_exp", cou_exp);
		model.addAttribute("p_category", p_category);
		
		
		
		
		
		
	}

}
