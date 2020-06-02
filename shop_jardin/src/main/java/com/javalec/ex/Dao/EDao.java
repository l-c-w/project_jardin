package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.EDto.EventDto;


public interface EDao {

	public ArrayList<EventDto> event_list(int page, int limit, String opt, String search);
	
	public int getListCount(String opt, String search);
	
}
