package com.javalec.ex.Service.CUService;

import org.springframework.ui.Model;

import com.javalec.ex.Dto.CDto.PagingDto;

public interface CuService {

	public void notice_search(Model model, PagingDto pagedto, String nowPage, String cntPerPage,
			String searchType, String keyword) throws Exception;
	
	

}
