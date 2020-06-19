package com.javalec.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.PDto.ProductDto;

@Repository
public class APDaoImpl implements APDao {

	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.javalec.ex.Dao.PDao";
	@Override
	public List<ProductDto> list() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void write(ProductDto dto) throws Exception {
		
		sql.insert(namespace + ".write", dto);

	}

	@Override
	public ProductDto getProductInfo(int p_code) throws Exception {
		
		return sql.selectOne(namespace + ".getProductInfo" , p_code);
	}

	@Override
	public void modify(ProductDto dto) throws Exception {
		
		sql.update(namespace + ".modify", dto);

	}

	@Override
	public void delete(String p_code) throws Exception {
		
		sql.delete(namespace+ ".delete", p_code);
	}

}
