package com.javalec.ex.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;

public class PDaoImpl implements PDao {

	@Override
	public ArrayList<ProductDto> list() {
		
		return null;
	}

	@Override
	public ArrayList<ProductDto> list2(String p_category) {
		
		return null;
	}

	@Override
	public ArrayList<ProductDto> list_category(String p_category) {
		
		return null;
	}

	@Override
	public void p_list(String p_category) {
		

	}

	@Override
	public ProductDto productDetail(String p_code) {
		
		return null;
	}

	@Override
	public ArrayList<P_ReviewDto> p_review(String p_code, int page, int limit) {
		
		return null;
	}

	@Override
	public ArrayList<C_ReviewDto> c_review(String p_code, int page, int limit) {
		
		return null;
	}

	@Override
	public ArrayList<P_FnqDto> pfnq_review(String p_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getListCount(String p_code) {
		
		return 0;
	}
	
	// 관리자 
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.javalec.ex.Dao.ADao";
	
	@Override
	public List<ProductDto> list3() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void write(ProductDto dto) throws Exception {
		
		sql.insert(namespace + ".write", dto);
	}

	@Override
	public ProductDto getProductInfo(int p_code) throws Exception {
		
		return sql.selectOne(namespace + ".getProductInfo",p_code);
	}
	
	@Override
	public void modify(ProductDto dto) throws Exception {
		
		sql.update(namespace + ".modify", dto);
	}

	@Override
	public int deleteProduct(int p_code) throws Exception {
		
		return sql.delete(namespace + ".deleteProduct",p_code);
	}

}
