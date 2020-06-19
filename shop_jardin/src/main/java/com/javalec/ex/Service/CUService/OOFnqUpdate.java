package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;

public class OOFnqUpdate {
	
	
	public void o_update(SqlSession sqlsession, String oo_type, String oo_title, String oo_content, String oo_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.oo_update(oo_type, oo_title, oo_content, oo_num);
		
		
	}
	
	
	
	
	
	
	
	

}
