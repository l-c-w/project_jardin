package com.javalec.ex.Service.AService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.ADao;
import com.javalec.ex.Dto.PDto.ProductDto;


@Service
public class AServiceImpl implements AService {

	@Inject
	private ADao dao;
	
	@Override
	public List<ProductDto> list() throws Exception{
		
		return dao.list();
	}

	@Override
	public void write(ProductDto dto) throws Exception {

		 dao.write(dto);
	}

	@Override
	public void modify(ProductDto dto) throws Exception {
		
		dao.modify(dto);
	}

	@Override
	public int delete(int p_code) throws Exception {
		
		return dao.delete(p_code);
	}
}
