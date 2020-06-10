package com.javalec.ex.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

@Controller
public class MController {

	@Autowired
	private SqlSession sqlsession;

	@RequestMapping("member/register_ok")
	public String register_ok(HttpServletRequest request, Member_Dto mdto, Model model) {

		String email = request.getParameter("email1") + "@" + request.getParameter("email2");

		/*
		 * String phone1 = request.getParameter("phone1") +
		 * request.getParameter("phone2") + request.getParameter("phone3");
		 * 
		 * int phone = Integer.parseInt(phone1);
		 */

		String year = request.getParameter("birth1");
		String month = request.getParameter("birth2");
		String day = request.getParameter("birth3");

		String birth1 = year + "-" + month + "-" + day;

		Date birth = Date.valueOf(birth1);

		MDao dao = sqlsession.getMapper(MDao.class);

		dao.register(mdto.getId(), mdto.getM_code(), mdto.getPw(), mdto.getName(), email, mdto.getEmail_agree(),
				mdto.getSms_agree(), mdto.getAddress1(), mdto.getAddress2(), mdto.getSol_lun(),
				mdto.getIntroduce(), mdto.getCoffee_favor(), birth, mdto.getPost(), mdto.getPhone1(), mdto.getPhone2(), mdto.getPhone3());
		
		model.addAttribute("msg", "ok");
		model.addAttribute("join_mem", mdto.getName());

		return "member/step04";

	}


	
	@RequestMapping("/member/step01")
	public String step01() {
		return "member/step01";
	}

	@RequestMapping("/member/step02")
	public String step02() {
		return "member/step02";
	}

	@RequestMapping("/member/step03")
	public String step03() {
		return "member/step03";
	}

	@RequestMapping("/member/step04")
	public String step04() {
		return "member/step04";
	}

	
	
	@RequestMapping("/member/id_check")
	@ResponseBody
	public int id_check(@RequestParam("Id") String Id) {
		
		MDao dao = sqlsession.getMapper(MDao.class);
		
		int cnt = dao.idcheck(Id);
		
		return cnt;
	}
	
	
	
	@RequestMapping("/member/idcheck")
	public String idcheck() {
		return "member/idcheck";
	}
	
	

	@RequestMapping("/member/idcheck2")
	public String idcheck2(HttpServletRequest request, Model model) {

		String id = request.getParameter("id");

		MDao dao = sqlsession.getMapper(MDao.class);

		int cnt = dao.idcheck(id);

		model.addAttribute("idcheck", cnt);

		return "/member/idcheck2";
	}

	
	
	
	@RequestMapping("/member/address_search")
	public String address_search() {
		return "member/address_search";
	}

	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "/main/main";
	}
	
	

	@RequestMapping("member/login_ok")
	public String login_ok(HttpServletRequest request, Model model) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MDao dao = sqlsession.getMapper(MDao.class);

		Member_Dto mdto1 = dao.login1(id);

		if (mdto1 == null) {
			
			model.addAttribute("idfail", "idfail");
			
			return "/member/login";

		} else {
			
			Member_Dto mdto2 = dao.login2(id, pw);
			
			if(mdto2==null) {
				
				model.addAttribute("pwfail", "pwfail");
				
				return "/member/login";
				
			}
			
			else {
				
				HttpSession session = request.getSession();
				
				session.setAttribute("session_mem", mdto2.getId());
				
				return "/main/main";
			}

		}
		
		
	}
	
	
	

	@RequestMapping("member/id_search")
	public String id_search() {
		return "member/id_search";
	}
	
	
	
	
	
	
	@RequestMapping("mypage/change_info")
	public String change_info(Model model, HttpServletRequest request) {
		
		
		String id= request.getParameter("id");
		
		MDao dao = sqlsession.getMapper(MDao.class);
		
		Member_Dto mdto = dao.member_change(id);
		
		String mail = mdto.getEmail();
        int idx = mail.indexOf("@"); 
        
        String mail1 = mail.substring(0, idx);
        String mail2 = mail.substring(idx+1);
        
        int phone = mdto.getPhone1();
        String phone1 = "0" + phone;
        
        String birthday = mdto.getBirth().toString();
        
        String year = birthday.substring(0, 4);
        String month = birthday.substring(5, 7);
        String day = birthday.substring(8, 10);
        
        
        model.addAttribute("mail1", mail1);
		model.addAttribute("mail2", mail2);
		
		model.addAttribute("phone1", phone1);
		
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		
		model.addAttribute("mdto", mdto);
		
		return "mypage/change_info";
	}
	
	
	
	
	
	@RequestMapping("mypage/change_ok")
	public String change_ok(Model model, HttpServletRequest request, Member_Dto mdto, HttpServletResponse response) throws IOException {

		
		MDao dao = sqlsession.getMapper(MDao.class);
		
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		
		dao.change_ok(mdto.getPw(), email, mdto.getEmail_agree(), mdto.getSms_agree(), mdto.getAddress1(), mdto.getAddress2(), 
				mdto.getSol_lun(), mdto.getIntroduce(), mdto.getCoffee_favor(), mdto.getPost(), mdto.getPhone1(), mdto.getPhone2(), mdto.getPhone3(), mdto.getId());
		
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		 
		out.println("<script>alert('정보가 수정되었습니다');</script>");
		 
		out.flush();
		
		return "/main/main";
		
	}
	
	
	
	

}
