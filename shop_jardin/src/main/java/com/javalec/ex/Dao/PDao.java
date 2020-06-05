package com.javalec.ex.Dao;

import java.sql.Timestamp;
import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public interface PDao {

	public ArrayList<ProductDto> list(String p_category);

	public ProductDto productDetail(String p_code);

	public ArrayList<P_ReviewDto> p_review(String p_code); // page, limit

	public ArrayList<C_ReviewDto> c_review(String p_code);

}
