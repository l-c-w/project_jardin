package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.EDto.Event_commentDto;
import com.javalec.ex.Dto.EDto.Winner_joinersDto;


public interface EDao {
	
	// 진행중 이벤트 리스트(all, tit, con은 검색 옵션)
	public ArrayList<EventDto> event_list(int page, int limit, String search);
	public ArrayList<EventDto> event_listAll(int page, int limit, String search);
	public ArrayList<EventDto> event_listTit(int page, int limit, String search);
	public ArrayList<EventDto> event_listCon(int page, int limit, String search);
	
	public ArrayList<EventDto> fin_event_list(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listAll(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listTit(int page, int limit, String search);
	public ArrayList<EventDto> fin_event_listCon(int page, int limit, String search);
	
	// 게시글이 몇 개인지 세는 메소드, (all, tit, con은 검색 옵션)
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
	
	// 이벤트 본문과 댓글 뷰 메소드, 댓글 수정 메소드
	public EventDto event_view(String e_code);
	public ArrayList<Event_commentDto> event_comment(String e_code, int startrow, int endrow);
	public int eModify_comment(String ec_num, String content);
	
	// 당첨자 리스트(all, tit, con은 검색 옵션)
	public ArrayList<Winner_joinersDto> winner_list(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listAll(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listTit(int page, int limit, String search);
	public ArrayList<Winner_joinersDto> winner_listCon(int page, int limit, String search);
	public int winnerUpHit(String w_code);
	public Winner_joinersDto winner_view(String w_code);
	
	public int eDeleteComment(String ec_num);
	
	public int eCommentWite(String e_code, String id, String comment_content); // 비밀글 만들거면 매개변수 추가해야됨
	
	// 진행중 이벤트 게시글 다음글, 이전글
	public EventDto eNextView(String e_code);
	public EventDto ePrevView(String e_code);
	
	// 종료된 이벤트 게시글 다음글, 이전글
	public EventDto eFNextView(String e_code);
	public EventDto eFPrevView(String e_code);
	
	// 당첨자 게시글 다음글, 이전글
	public Winner_joinersDto eWinNextView(String w_code);
	public Winner_joinersDto eWinPrevView(String w_code);
	
}
