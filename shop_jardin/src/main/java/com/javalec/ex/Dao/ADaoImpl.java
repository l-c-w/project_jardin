package com.javalec.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.PDto.ProductDto;

@Repository
public class ADaoImpl implements ADao {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.javalec.ex.Dao.ADao";
	
	@Override
	public List<ProductDto> list() throws Exception {
		
		
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void write(ProductDto dto) throws Exception {
		
		sql.insert(namespace + ".write", dto);
	}

}
