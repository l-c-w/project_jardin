package com.javalec.ex.Service.CUService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.CuDao;

public class OOFnqDelete {
	
	public void o_delete(SqlSession sqlsession, String oo_num) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.oo_delete(oo_num);
		
	}
	
	
	
	

}
