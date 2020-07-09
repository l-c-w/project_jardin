package com.javalec.ex.Dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Dto.PDto.ReplyDto;
import com.javalec.ex.Dto.PDto.ReplyListDto;

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
	public int listCount() throws Exception{
		
		return sql.selectOne(namespace + ".listCount");
	}

	@Override
	public List<C_ReviewDto> comment_list() {
		List<C_ReviewDto> tddd = sql.selectList(namespace+".comment_list");
		System.out.println(tddd);
		return tddd;
	}

	@Override
	public void comment_delete(C_ReviewDto cdto) {
		sql.delete(namespace + ".comment_delete" , cdto);
	}

	@Override
	public void comment_insert(C_ReviewDto cdto) {
		sql.insert(namespace+".comment_insert" , cdto);
	}

	@Override
	public void comment_update(C_ReviewDto cdto) {
		sql.update(namespace+".comment_update" , cdto);
	}

//	@Override
//	public List<P_FnqDto> p_Fnq_List() {
//		List<P_FnqDto> flist = sql.selectList(namespace+".p_Fnq_List");
//		System.out.println(flist);
//		return flist;
//	}
//
//	@Override
//	public void p_Fnq_delete(P_FnqDto fdto) {
//		sql.delete(namespace + ".p_Fnq_delete" , fdto);
//	}
//
//	@Override
//	public void p_Fnq_insert(P_FnqDto fdto) {
//		sql.insert(namespace+".p_Fnq_insert" , fdto);
//	}
//
//	@Override
//	public void p_Fnq_update(P_FnqDto fdto) {
//		sql.update(namespace+".p_Fnq_update" , fdto);
//	}


}
