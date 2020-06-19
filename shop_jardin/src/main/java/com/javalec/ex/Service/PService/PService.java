package com.javalec.ex.Service.PService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dto.PDto.ProductDto;

public interface PService {

	public void execute(HttpServletRequest request, SqlSession sql, Model model);


}
