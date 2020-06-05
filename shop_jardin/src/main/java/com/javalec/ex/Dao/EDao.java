package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;


public interface EDao {

	public ArrayList<EventDto> event_list(int page, int limit);
	
	public int getListCount();
	
	public int getCommentCount(String e_code);
	
	public EventDto event_view(String e_code);
	
	public ArrayList<Event_commentDto> event_comment(String e_code, int page, int limit);
	
	public Event_commentDto eModify_comment(String e_code, String content);
}
