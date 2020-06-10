package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;
import com.javalec.ex.Dto.EDto.Winner_joinersDto;


public interface EDao {
	
	public ArrayList<EventDto> event_list(int page, int limit, String search);
	public ArrayList<EventDto> event_listAll(int page, int limit, String search);
	public ArrayList<EventDto> event_listTit(int page, int limit, String search);
	public ArrayList<EventDto> event_listCon(int page, int limit, String search);
	
	public ArrayList<EventDto> fin_event_list(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listAll(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listTit(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listCon(int page, int limit, String search);
	
	public int getListCount(String search);
	public int getListCountAll(String search);
	public int getListCountTit(String search);
	public int getListCountCon(String search);
	
	public int getFinListCount(String search);
	public int getFinListCountAll(String search);
	public int getFinListCountTit(String search);
	public int getFinListCountCon(String search);	
	
	public int getCommentCount(String e_code);
	
	public int getWinnerCount(String search);
	public int getWinnerCountAll(String search);
	public int getWinnerCountTit(String search);
	public int getWinnerCountCon(String search);
	
	public EventDto event_view(String e_code);	
	public ArrayList<Event_commentDto> event_comment(String e_code, int page, int limit);	
	public int eModify_comment(String e_code, String content);
	
	public ArrayList<Winner_joinersDto> winner_list(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listAll(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listTit(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listCon(int page, int limit, String search);
	public int winnerUpHit(String w_code);
	public Winner_joinersDto winner_view(String w_code);
	
	
}
