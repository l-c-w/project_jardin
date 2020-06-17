package com.javalec.ex.Service.PService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.APDao;
import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

@Service
public class APServiceImpl implements APService {
	@Inject
	private APDao dao;
	
	//상품 전체 리스트
	@Override
	public List<ProductDto> list() throws Exception{
		
		return dao.list();
	}
	//상품 등록
	@Override
	public void write(ProductDto dto) throws Exception {

		 dao.write(dto);
	}
	
	//상품 한개 정보
	@Override
	public ProductDto getProductInfo(int p_code) throws Exception {
		
		return dao.getProductInfo(p_code);
	}
	
	//상품 수정
	@Override
	public void modify(ProductDto dto) throws Exception {
		
		dao.modify(dto);
	}
	//상품 삭제
	@Override
	public void deleteProduct(String p_code) throws Exception {
		
		dao.delete(p_code);
	}
}
