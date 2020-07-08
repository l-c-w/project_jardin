package com.javalec.ex.Service.PService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Dto.PDto.ReplyDto;
import com.javalec.ex.Dto.PDto.ReplyListDto;

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
		return dao.related(p_category);
	}

	@Override
	public int listCount() throws Exception{
		
		return dao.listCount();
	}

	@Override
	public List<C_ReviewDto> comment_list() {
		return dao.comment_list();
	}

	@Override
	public void comment_delete(C_ReviewDto cdto) {
		dao.comment_delete(cdto);
	}

	@Override
	public void comment_insert(C_ReviewDto cdto) {
		dao.comment_insert(cdto);
	}

	@Override
	public void comment_update(C_ReviewDto cdto) {
		dao.comment_update(cdto);
	}


}
