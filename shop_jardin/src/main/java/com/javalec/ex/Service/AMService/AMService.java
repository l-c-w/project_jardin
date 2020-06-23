package com.javalec.ex.Service.AMService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.Member_Dto;

public interface AMService {
	
	public ArrayList<Member_Dto> admin_member(Model model);
	
	public void a_notice_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto);
	
	public void a_notice_view(Model model, String num);
	
	
	
	

}
