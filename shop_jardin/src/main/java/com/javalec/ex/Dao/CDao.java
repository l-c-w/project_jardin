package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;

public interface CDao {
	
	
	// 일반 상품평
	
	
	public ArrayList<C_ReviewDto> c_list();
	
	public C_ReviewDto c_view(String id);
	
	public void c_write(String cr_title, String cr_content, int cr_score);
	
	
	// 포토 상품평
	
	
    public ArrayList<P_ReviewDto> p_list();
	
	public P_ReviewDto p_view(String id);
	
	public void p_write(String id, String p_code, String pr_title, String pr_content, String pr_file, int pr_scroe, int pr_hit );
	

	
}
