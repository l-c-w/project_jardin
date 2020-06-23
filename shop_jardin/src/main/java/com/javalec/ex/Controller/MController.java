package com.javalec.ex.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Random;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;
import com.javalec.ex.Service.MService.MService;

@Controller
public class MController {
	
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping("/member/register_ok")
	public String register_ok(HttpServletRequest request, Member_Dto mdto, Model model) {

		String email = request.getParameter("email1") + "@" + request.getParameter("email2");

		
		/*
		 * String phone1 = request.getParameter("phone1") +
		 * request.getParameter("phone2") + request.getParameter("phone3");
		 * 
		 * int phone = Integer.parseInt(phone1);
		 * 
		 */
		

		String year = request.getParameter("birth1");
		String month = request.getParameter("birth2");
		String day = request.getParameter("birth3");

		String birth1 = year + "-" + month + "-" + day;

		Date birth = Date.valueOf(birth1);

		MDao dao = sqlsession.getMapper(MDao.class);

		dao.register(mdto.getId(), mdto.getM_code(), mdto.getPw(), mdto.getName(), email, mdto.getEmail_agree(),
				mdto.getSms_agree(), mdto.getAddress1(), mdto.getAddress2(), mdto.getSol_lun(), mdto.getIntroduce(),
				mdto.getCoffee_favor(), birth, mdto.getPost(), mdto.getPhone1(), mdto.getPhone2(), mdto.getPhone3());

		model.addAttribute("msg", "ok");
		model.addAttribute("join_mem", mdto.getName());

		return "member/step04";

	}
	
	
	
	

	@RequestMapping("/member/step01")
	public String step01(Model model) {
		return "member/step01";
	}

	
	@RequestMapping("/member/step01_2")
	public String step01_2(Model model) {
		return "member/step01_2";
	}

	
	@RequestMapping("/member/step02")
	public String step02() {
		return "member/step02";
	}

	
	
	@Autowired // 서비스를 호출하기 위해서 의존성을 주입
	JavaMailSender mailSender; // 메일 서비스를 사용하기 위해 의존성을 주입함.
	
	
	// mailSending 코드
	@RequestMapping(value = "/member/auth", method = RequestMethod.POST)
	public String mailSending(HttpServletRequest request, HttpServletResponse response_email, Model model)
			throws IOException {

		Random r = new Random();

		int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 인증코드 부분 (난수)

		String setfrom = "admin@jardin.com";
		String tomail = request.getParameter("email"); // 받는 사람 이메일
		System.out.println(tomail);
		String title = "회원가입 인증 이메일 입니다."; // 제목
		String content =

				"안녕하세요 회원님 저희 자댕 홈페이지를 찾아주셔서 감사합니다"

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						" 인증번호는 " + dice + " 입니다. "

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						"받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용

		System.out.println(content);

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom, "관리자"); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);

		} catch (Exception e) {

			System.out.println(e);

		}

		model.addAttribute("dice", dice);

		response_email.setContentType("text/html; charset=UTF-8");
		PrintWriter out_email = response_email.getWriter();
		out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.'); </script>");
		out_email.flush();

		return "/member/step01_2";

	}

	
	
	
	// 이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
	// 내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
	// 틀리면 다시 원래 페이지로 돌아오는 메소드
	

	@RequestMapping(value = "/member/join_injeung", method = RequestMethod.POST)
	public String join_injeung(@RequestParam("email_ij") String email_injeung, @RequestParam("email_ch") String dice,
			HttpServletResponse response_equals, Model model) throws IOException {

		System.out.println("마지막 : email_injeung : " + email_injeung);
		System.out.println("마지막 : dice : " + dice);

		// 페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음

		if (email_injeung.equals(dice)) {

			// 인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
			out_equals.flush();

			return "/member/step02";

		}

		else if (email_injeung != dice) {

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.');</script>");
			out_equals.flush();

			model.addAttribute("dice", dice); // 인증번호값 날라가니까 다시 설정

		}

		return "/member/step01_2";

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
	
	
	@RequestMapping("/member/email_check")
	@ResponseBody
	public int email_check(@RequestParam("email") String email) {

		MDao dao = sqlsession.getMapper(MDao.class);
	    System.out.println(email);
		int cnt = dao.emailcheck(email);
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
	
	
	

	@RequestMapping("/member/login_ok")
	public String login_ok(HttpServletRequest request, Model model, HttpServletResponse response) throws IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MDao dao = sqlsession.getMapper(MDao.class);

		Member_Dto mdto1 = dao.login1(id);

		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		if (mdto1 == null) {

			/* model.addAttribute("idfail", "idfail"); */

			out.println("<script>alert('일치하는 아이디가 없습니다');</script>");

			out.flush();

			return "/member/login";

		} else {

			Member_Dto mdto2 = dao.login2(id, pw);

			if (mdto2 == null) {

				/* model.addAttribute("pwfail", "pwfail"); */

				out.println("<script>alert('비밀번호가 틀렸습니다');</script>");

				out.flush();

				return "/member/login";

			}

			else {

				HttpSession session = request.getSession();

				out.println("<script>alert('로그인에 성공하였습니다');</script>");

				out.flush();

				session.setAttribute("session_mem", mdto2.getId());

				return "/main/main";
			}

		}

	}

	
	
	
	
	@RequestMapping("/member/id_search")
	public String id_search() {
		return "/member/id_search";
	}

	
	
	
	
	// 아이디 찾기
	@RequestMapping(value = "/member/id_search_go", method = { RequestMethod.GET, RequestMethod.POST })
	public String sendMailId(HttpSession session, HttpServletResponse response, 
			@RequestParam("name_s") String name,
			@RequestParam("email_s") String email, 
			Model model) throws IOException {

		
		Member_Dto mdto = mservice.id_check(name, email);

		
		if (mdto != null) {
			String subject = "아이디 찾기 안내 메일 입니다.";
			StringBuilder sb = new StringBuilder();
			sb.append("귀하의 아이디는 " + mdto.getId() + " 입니다.");
			System.out.println(subject);
			System.out.println(sb.toString());
			System.out.println(email);

			try {

				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom("admin@jardin.com", "관리자"); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(email); // 받는사람 이메일
				messageHelper.setSubject(subject); //
				messageHelper.setText(sb.toString()); // 메일 내용

				mailSender.send(message);

			} catch (Exception e) {

				System.out.println(e);

			}

			model.addAttribute("id_search_s", mdto.getId());
			return "/email/id";
		}

		else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('일치하는 정보가 없습니다. 다시 시도해주세요');</script>");
			out.flush();
			return "/member/id_search";
		}

	}

	
	
	
	
	
	
	// 비밀번호 찾기
	@RequestMapping(value = "/member/pw_search_go", method = { RequestMethod.GET, RequestMethod.POST })
	public String sendMailPassword(HttpSession session, 
			@RequestParam("id_s") String id,
			@RequestParam("email_s") String email, 
			HttpServletResponse response,
			Model model) throws IOException {

		
		Member_Dto mdto = mservice.pw_check(id, email);

		
		if (mdto != null) {

			model.addAttribute("pw_search_s", mdto.getPw());
			return "/email/password";

			
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('일치하는 정보가 없습니다. 다시 시도해주세요');</script>");
			out.flush();
			return "/member/id_search";
		}

	}

	
	
	
	
	@RequestMapping("/mypage/change_info")
	
	public String change_info(Model model, HttpServletRequest request) {

		String id = request.getParameter("id");

		MDao dao = sqlsession.getMapper(MDao.class);

		Member_Dto mdto = dao.member_change(id);

		String mail = mdto.getEmail();
		int idx = mail.indexOf("@");

		String mail1 = mail.substring(0, idx);
		String mail2 = mail.substring(idx + 1);

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

	
	
	
	
	@RequestMapping("/mypage/change_ok")
	public String change_ok(Model model, HttpServletRequest request, Member_Dto mdto, HttpServletResponse response)
			throws IOException {

		MDao dao = sqlsession.getMapper(MDao.class);

		String email = request.getParameter("email1") + "@" + request.getParameter("email3");

		dao.change_ok(mdto.getPw(), email, mdto.getEmail_agree(), mdto.getSms_agree(), mdto.getAddress1(),
				mdto.getAddress2(), mdto.getSol_lun(), mdto.getIntroduce(), mdto.getCoffee_favor(), mdto.getPost(),
				mdto.getPhone1(), mdto.getPhone2(), mdto.getPhone3(), mdto.getId());

		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		out.println("<script>alert('정보가 수정되었습니다');</script>");

		out.flush();

		return "/main/main";

	}

	
	
	
	@RequestMapping("/mypage/get_leave")
	public String change_ok() {
		return "/mypage/get_leave";
	}

	
	
	
	@Inject
	MService mservice;
	
	
	
	@RequestMapping("/mypage/withdrawal")
	public String withdrawal(Model model, 
			@RequestParam("w_id") String w_id,
			@RequestParam("w_pw") String w_pw, 
			HttpServletResponse response,
			HttpSession session) throws Exception {
		
		mservice.Withdrawal(model, w_id, w_pw, response, session);
		
		return "/main/main";
	}

	
	
	@RequestMapping("/mypage/withdrawal_check")
	@ResponseBody
	public int withdrawal_check(Model model, 
			@RequestParam(value = "w_id", required = false) String w_id,
			@RequestParam(value = "w_pw", required = false) String w_pw, 
			Member_Dto mdto) {

		return mservice.Withdrawal_check(model, mdto, w_id, w_pw);

	}
	
	
	

}
