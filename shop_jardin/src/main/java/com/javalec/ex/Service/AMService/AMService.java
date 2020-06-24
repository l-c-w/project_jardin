package com.javalec.ex.Service.AMService;

import java.security.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.Member_Dto;

public interface AMService {
	
	public ArrayList<Member_Dto> admin_member(Model model);
	
	
	
	// 공지사항 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	public void a_notice_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto);
	
	public void a_notice_view(Model model, String num);
	
	public void a_notice_delete(String num);
	
	
	
	// faq ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	public void a_faq_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto);
	
	public void a_faq_write(String f_type, String f_title, String f_content);
	
	public void a_faq_view(Model model, String num);
	
	public void a_faq_delete(String num);
	
	public void a_faq_update(FnqDto fdto);
	
	
	
	
	// 1:1문의 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	public void o_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto);
	
	public void o_answer(Model model, String oo_num, String oo_answer);
	
	

}
