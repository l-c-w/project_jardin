package com.javalec.ex.Service.PService;

import java.util.List;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public interface PService {

	// 상품 전체 리스트
	public List<ProductDto> Plist() throws Exception;

	// 상품 카테고리
	public List<String> Plist2() throws Exception;

	// 상품 상세정보
	public List<ProductDto> related(String p_category) throws Exception;

	ProductDto productDetail(int p_code) throws Exception;

	// 상품 글 리뷰
	public List<C_ReviewDto> comment_list();

	public void comment_delete(C_ReviewDto dto);

	public void comment_insert(C_ReviewDto dto);

	public void comment_update(C_ReviewDto dto);

}
