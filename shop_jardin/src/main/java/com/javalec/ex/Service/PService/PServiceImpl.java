package com.javalec.ex.Service.PService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

@Service
public class PServiceImpl implements PService {

	@Autowired
	private PDao dao;

	@Override
	public List<ProductDto> Plist() throws Exception {
		
		return dao.Plist();
	}

	@Override
	public List<String> Plist2() throws Exception {
		
		return dao.Plist2();
	}

	@Override
	public ProductDto productDetail(int p_code) throws Exception {
	
		return dao.productDetail(p_code);
	}

	@Override
	public List<ProductDto> related(String p_category) throws Exception {
		System.out.println("실행1: " + p_category);
		return dao.related(p_category);
	}
	
}
