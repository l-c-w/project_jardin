package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.SearchingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;

public interface BDao {
	
	public ArrayList<NoticeDto> getBoardList(SearchingDto search) throws Exception;
	
	public int getBoardListCnt(SearchingDto search) throws Exception;
	
}
