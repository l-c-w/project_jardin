package com.javalec.ex.Dao;

import java.util.ArrayList;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.CDto.PagingDto;

public interface CDao {
	

	// 일반 상품평

	
	/* public ArrayList<C_ReviewDto> c_list(); */

	public C_ReviewDto c_view(String cr_num);

	public void c_write(String id, String p_code, String pr_title, String pr_content, int pr_scroe, int pr_hit);

	// 게시물 총 갯수
	public int c_countBoard();

	// 페이징 처리 게시글 조회
	public ArrayList<C_ReviewDto> c_selectBoard(PagingDto pagingdto);

	public void c_upHit(String cr_num);

	public C_ReviewDto cr_next(String cr_num);

	public C_ReviewDto cr_pre(String cr_num);

	public void cr_delete(String cr_num);

	public void cr_update(String cr_title, String cr_content, int cr_score, String cr_num);
	
	public void cr_answer(String cr_answer, String cr_num);
	

	
	
	// 포토 상품평 //
	
	
	
	
	
	/* public ArrayList<P_ReviewDto> p_list(); */

	public P_ReviewDto p_view(String pr_num);

	public void p_write(String id, String p_code, String pr_title, String pr_content, String pr_file, int pr_scroe,int pr_hit);

	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public ArrayList<P_ReviewDto> selectBoard(PagingDto pagingdto);

	public void p_upHit(String pr_num);

	public P_ReviewDto pr_next(String pr_num);

	public P_ReviewDto pr_pre(String pr_num);

	public void pr_delete(String pr_num);

	public void pr_update(String pr_title, String pr_content, String pr_file, int pr_score, String pr_num);
	
	public void pr_answer(String pr_answer, String pr_num);

}
