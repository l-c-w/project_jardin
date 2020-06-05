package com.javalec.ex.Service.MainService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.PDto.ProductDto;

public class MainListService implements MainService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {

	}

}
