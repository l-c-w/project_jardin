package com.javalec.ex.Service.MService;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;


@Service
public class MServiceImpl implements MService {
	
	
	@Autowired
	SqlSession sqlsession;
	

	@Override
	public int Withdrawal_check(Model model, Member_Dto mdto, String id, String pw) {
		
        MDao mdao = sqlsession.getMapper(MDao.class);
		
		int check = mdao.idpwch(id, pw);
		
		return check;
		
		
	}

	
	
	@Override
	public void Withdrawal(Model model, String id, String pw, HttpServletResponse response, HttpSession session) throws Exception {
		
        MDao mdao = sqlsession.getMapper(MDao.class);
		
		mdao.withdrawal(id, pw);
		
		session.setAttribute("session_mem", null);
		
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		 
		out.println("<script>alert('회원탈퇴가 완료되었습니다. 그동안 너무 감사했습니다');</script>");
		 
		out.flush();
		
		
	}



	@Override
	public Member_Dto id_check(String name, String email) {
		
		MDao mdao = sqlsession.getMapper(MDao.class);
		Member_Dto mdto = mdao.login_search(name, email);
		return mdto;
		
	}



	@Override
	public Member_Dto pw_check(String id, String email) {
		
		MDao mdao = sqlsession.getMapper(MDao.class);
  		Member_Dto mdto = mdao.login_pw_search(id, email);
  		return mdto;
  		
	}

	
}
