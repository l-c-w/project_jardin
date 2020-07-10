package com.javalec.ex.Dao;

import java.util.List;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.Criteria;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Dto.PDto.ReplyDto;
import com.javalec.ex.Dto.PDto.ReplyListDto;
import com.javalec.ex.Dto.PDto.SearchValue;

public interface PDao {

	// 상품 전체 리스트

	public List<ProductDto> Plist() throws Exception;

	public List<String> Plist2() throws Exception;

	public ProductDto productDetail(int p_code) throws Exception;

	public List<ProductDto> related(String p_category) throws Exception;


	// 댓글
	public List<C_ReviewDto> comment_list(int page,int limit,String search);

	public void comment_delete(C_ReviewDto cdto);

	public void comment_insert(C_ReviewDto cdto);

	public void comment_update(C_ReviewDto cdto);
	
	
	// 질문 답변
	
	public List<P_FnqDto> p_Fnq_List();

	public void p_Fnq_delete(P_FnqDto fdto);

	public void p_Fnq_insert(P_FnqDto fdto);

	public void p_Fnq_update(P_FnqDto fdto);

	// 페이징
	public List<C_ReviewDto> listPage(Criteria cri) throws Exception;
	
	public int listCount() throws Exception;
	
	public List<P_FnqDto> listPage2(Criteria cri) throws Exception;
	
	public int listCount2() throws Exception;

}
