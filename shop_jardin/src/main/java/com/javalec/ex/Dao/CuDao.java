package com.javalec.ex.Dao;

import java.security.Timestamp;
import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;
import com.javalec.ex.Dto.MDto.Oo_fnqDto;

public interface CuDao {
	
	
	
	
	
	//notice 공지사항
	
	public NoticeDto n_view(String n_num);
	
	public void n_write(String n_title, String n_content, int n_hit);

	public int n_countBoard();
	
	public ArrayList<NoticeDto> n_selectBoard(PagingDto pdto);
	
	public NoticeDto n_next(String n_num);
	
	public NoticeDto n_pre(String n_num);
    
    public void n_delete(String n_num);
    
    public void n_update(String n_title, String n_content, String n_num);
	
	
    
    
    
	
	// 1:1문의
	
	
    public Oo_fnqDto oo_view(String oo_num);
	
	public void oo_write(String id, String oo_type, String oo_title, String oo_content);

	public int o_countBoard(String id);
	
	public ArrayList<Oo_fnqDto> o_selectBoard(PagingDto pdto);
	
    public void oo_delete(String oo_num);
    
    public void oo_update(String oo_type, String oo_title, String oo_content, String oo_num);
    
 
    
    //해야 할 거 (삭제, 업데이트)
    
    
    public void oo_answer(String oo_answer, Timestamp oo_udate, String oo_num);
    
    
	
	
	// faq
	
	
     public ArrayList<FnqDto> f_list();
     
     public ArrayList<FnqDto> f_type_list(String f_type);
     
     public FnqDto f_view(String f_num);
     
     public void f_write(String f_type, String f_title, String f_content);
     
     public int f_countBoard();
     
     public ArrayList<FnqDto> f_selectBoard(PagingDto pdto);
     
     
     
     
 	 public ArrayList<FnqDto> f_getBoardList(SearchingDto search) throws Exception;
 	
 	 public int f_getBoardListCnt(SearchingDto search) throws Exception;
 	
     
     
     
     //해야 할 거 (삭제, 업데이트)
     
     public void f_delete(String f_num);
     
     public void f_update(String f_type, String f_title, String f_content, String f_num);
     
     
 
	

}
