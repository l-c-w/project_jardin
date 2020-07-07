package com.javalec.ex.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.Criteria;
import com.javalec.ex.Dto.PDto.ProductDto;

@Repository
public class PDaoImpl implements PDao {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.javalec.ex.Dao.PDao";

	@Override
	public List<ProductDto> Plist() throws Exception {
		
		return sql.selectList(namespace + ".Plist");
	}

	@Override
	public List<String> Plist2() throws Exception {
		
		return sql.selectList(namespace + ".Plist2");
	}

	@Override
	public List<ProductDto> related(String p_category) throws Exception {
		
	
		return sql.selectList(namespace + ".related" , p_category);
	}

	@Override
	public ProductDto productDetail(int p_code) throws Exception {
		
		return sql.selectOne(namespace + ".productDetail" , p_code);
	}

	@Override
	public List<C_ReviewDto> listPage(Criteria cri) {
		
		return sql.selectList(namespace + ".listPage", cri);
	}

	@Override
	public void comment_delete(C_ReviewDto dto) {
		
		sql.delete(namespace + ".comment_delete", dto);
	}

	@Override
	public void comment_insert(C_ReviewDto dto) {
		sql.insert(namespace + ".comment_insert", dto);
	}

	@Override
	public void comment_update(C_ReviewDto dto) {
		sql.update(namespace + ".comment_update", dto);
	}

	@Override
	public int listCount() {
		
		return sql.selectOne(namespace + ".listCount");
	}
	

}
