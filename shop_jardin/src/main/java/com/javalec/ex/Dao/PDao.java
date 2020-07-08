package com.javalec.ex.Dao;

import java.util.List;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Dto.PDto.ReplyDto;
import com.javalec.ex.Dto.PDto.ReplyListDto;

public interface PDao {

	// 상품 전체 리스트

	public List<ProductDto> Plist() throws Exception;

	public List<String> Plist2() throws Exception;

	public ProductDto productDetail(int p_code) throws Exception;

	public List<ProductDto> related(String p_category) throws Exception;

	// 게시물 총 개수
	public int listCount() throws Exception;

	// 댓글
	public List<C_ReviewDto> comment_list();

	public void comment_delete(C_ReviewDto cdto);

	public void comment_insert(C_ReviewDto cdto);

	public void comment_update(C_ReviewDto cdto);

//	public ArrayList<ProductDto> Plist() throws Exception;
//
//	public ArrayList<ProductDto> Plist2(String p_category) throws Exception;
//
//	public ArrayList<ProductDto> list_category(String p_category) throws Exception;
//	
//	public void p_list(String p_category) throws Exception;
//
//
//	public ArrayList<P_ReviewDto> p_review(String p_code,int page,int limit) throws Exception; // page, limit
//
//	public ArrayList<C_ReviewDto> c_review(String p_code,int page,int limit) throws Exception;
//	
//	public ArrayList<P_FnqDto> pfnq_review(String p_code) throws Exception;
//	
//	//해당 상품에 대한 모든 리뷰 카운트
//	public int getListCount(String p_code) throws Exception;

}
