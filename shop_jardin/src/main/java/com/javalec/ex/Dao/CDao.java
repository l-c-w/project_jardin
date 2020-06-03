package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.C_ReviewDto;

public interface CDao {
	
	public ArrayList<C_ReviewDto> c_list();
	
	public void c_insert(String id, String p_code, String cr_title, String cr_content, int cr_score);
	

}
