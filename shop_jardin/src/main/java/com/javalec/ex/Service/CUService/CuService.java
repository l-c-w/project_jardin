package com.javalec.ex.Service.CUService;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dto.CDto.PagingDto;

public interface CuService {
	
	
	 // 공지사항 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	

	public void notice_search(Model model, PagingDto pagedto, String nowPage, String cntPerPage,
			String searchType, String keyword) throws Exception;
	
	public void n_update(Model model, String n_title, String n_content, String n_num);
	
	public void n_update_view(Model model, String n_num);
	
	public void n_write(Model model, String n_title, String n_content, int n_hit);
	
	
	
	
	 // faq ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	public void f_view(String f_num, Model model);
	
	
	
	
	
	
	
	 // 1:1 문의 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	public void o_delete(String oo_num);
	
	public void o_list(Model model, String nowPage, String cntPerPage, PagingDto pagedto, String id);
	
	public void o_update(String oo_type, String oo_title, String oo_content, String oo_num);
	
	public void o_view(Model model, String oo_num);
	
	public void oo_write(HttpSession session,	Model model, String oo_type,String oo_title,String oo_content);
	
	
	
	
	

}
