package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.EDto.CouponDto;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public interface ACDao {

	public ArrayList<CouponDto> coupon_list(String e_code);
	
	public ArrayList<ProductDto> pCategory_search();
	
	public ArrayList<EventDto> eCode_search();
	
	public int coupon_write(String e_code, String cou_name, double cou_reward, 
			int cou_limit, String cou_start, String cou_end, int cou_exp);
	
	public void eWriteDo(EventDto eventDto);
}
