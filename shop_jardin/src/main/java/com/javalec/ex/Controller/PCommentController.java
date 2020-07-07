package com.javalec.ex.Controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;

@Controller
public class PCommentController {


	@Autowired
	private SqlSession sqlSession;
	
//	@RequestMapping("/comment_list")
//	@ResponseBody  //json데이터로 페이지 리턴
//	public List<C_ReviewDto> comment_list(){
//		//mybatis 에 있는 객체를 가져 옴.
//		PDao dao = sqlSession.getMapper(PDao.class);
//		
//		return dao.getReviewList(0, 0);
//	}
	
//	@RequestMapping("/comment_delete")
//	@ResponseBody  //json데이터로 페이지 리턴
//	public String comment_delete(@ModelAttribute C_ReviewDto dto){
//		PDao dao = sqlSession.getMapper(PDao.class);
//		dao.comment_delete(dto);
//		return "success";
//	}
//	
//	@RequestMapping("/comment_insert")
//	@ResponseBody  //json데이터로 페이지 리턴
//	public String comment_insert(@ModelAttribute C_ReviewDto dto){
//		PDao dao = sqlSession.getMapper(PDao.class);
//		dao.comment_insert(dto);
//		System.out.println("넘버:"+dto.getCr_num());
//		return "success";
//	}
//	
//	@RequestMapping("/comment_update")
//	@ResponseBody  //json데이터로 페이지 리턴
//	public String comment_update(@ModelAttribute C_ReviewDto dto){
//		PDao dao = sqlSession.getMapper(PDao.class);
//		dao.comment_update(dto);
//		return "success";
//	}


}
