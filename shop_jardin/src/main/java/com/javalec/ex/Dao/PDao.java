package com.javalec.ex.Dao;

import java.sql.Timestamp;
import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public interface PDao {

	public ArrayList<ProductDto> list();

	public ArrayList<ProductDto> list2(String p_category);

	public ArrayList<ProductDto> list_category(String p_category);
	
	public void p_list(String p_category);

	public ProductDto productDetail(String p_code);

	public ArrayList<P_ReviewDto> p_review(String p_code); // page, limit

	public ArrayList<C_ReviewDto> c_review(String p_code);
	
	public ArrayList<P_FnqDto> pfnq_review(String p_code);
	
	public int getListCount();

}
