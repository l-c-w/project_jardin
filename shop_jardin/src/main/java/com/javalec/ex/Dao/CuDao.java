package com.javalec.ex.Dao;

import java.sql.Date;
import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.NoticeDto;

public interface CuDao {
	
	//notice 공지사항
	
	public NoticeDto n_view(String n_num);
	
	public void n_write(String n_title, String n_content, int n_hit, Date n_wdate);

	public int n_countBoard();
	
	public ArrayList<NoticeDto> n_selectBoard(PagingDto pdto);
	
	public NoticeDto n_next(String n_num);
	
	public NoticeDto n_pre(String n_num);
	
	
	// 1:1문의
	
	
	
	
	
	
	
	
	
	
	// faq
	
	
	
	
	
	
	
	
	
	

}
