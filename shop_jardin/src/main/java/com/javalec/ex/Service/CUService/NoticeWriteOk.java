package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;

public class NoticeWriteOk {
	
	
	public void n_write(SqlSession sqlsession, Model model, String n_title, String n_content, int n_hit) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.n_write(n_title, n_content, n_hit);
		
	}

}
