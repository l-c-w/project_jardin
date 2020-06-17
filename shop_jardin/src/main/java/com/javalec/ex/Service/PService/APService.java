package com.javalec.ex.Service.PService;

import java.util.List;

import com.javalec.ex.Dto.PDto.ProductDto;

public interface APService {

	// 상품 리스트
		public List<ProductDto> list() throws Exception;

		// 상품 작성
		public void write(ProductDto dto) throws Exception;

		// 제품 하나의 정보
		ProductDto getProductInfo(int p_code) throws Exception;

		// 상품 수정
		public void modify(ProductDto dto) throws Exception;

		// 상품 삭제
		public void deleteProduct(String p_code) throws Exception;
}
