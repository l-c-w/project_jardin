package com.javalec.ex.Service.AService;

import java.util.List;

import com.javalec.ex.Dto.PDto.ProductDto;

public interface AService {

	// 상품 리스트
	public List<ProductDto> list () throws Exception;
	
	// 상품 작성
	public void write(ProductDto dto) throws Exception;
}
