package com.javalec.ex.Service.MService;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.javalec.ex.Dto.MDto.Member_Dto;

public interface MService {

	public int Withdrawal_check(Model model, Member_Dto mdto, String id, String pw);
	
	public void Withdrawal(Model model,	String id, 	String pw,  HttpServletResponse response, HttpSession session) throws Exception;

	public Member_Dto id_check(String name, String email);
	
	public Member_Dto pw_check(String id, String email);
	
	

}
