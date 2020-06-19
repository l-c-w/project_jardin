package com.javalec.ex.Service.MService;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.resource.HttpResource;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

public class MWithdrawal {
	
	
	
	public int Withdrawal_check(SqlSession sqlsession, Model model, Member_Dto mdto, String id, String pw) {
		
		MDao mdao = sqlsession.getMapper(MDao.class);
		
		int check = mdao.idpwch(id, pw);
		
		return check;
		
	}
	
	

	public void Withdrawal(SqlSession sqlsession, 
			Model model,
			String id, 
			String pw, 
		    HttpServletResponse response,
            HttpSession session) throws IOException {
		
		MDao mdao = sqlsession.getMapper(MDao.class);
		
		mdao.withdrawal(id, pw);
		
		session.setAttribute("session_mem", null);
		
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		 
		out.println("<script>alert('회원탈퇴가 완료되었습니다. 그동안 너무 감사했습니다');</script>");
		 
		out.flush();
		
		
	}
	
	

}
