package com.javalec.ex.Service.MService;

import org.apache.ibatis.session.SqlSession;

import com.javalec.ex.Dao.MDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

public class MIdSearch {
	
	
      public static Member_Dto id_check(SqlSession sqlsession, String name, String email) {
		
		MDao mdao = sqlsession.getMapper(MDao.class);
		Member_Dto mdto = mdao.login_search(name, email);
		return mdto;
		
	}
	
      
	
      public static Member_Dto pw_check(SqlSession sqlsession, String id, String email) {
  		
  		MDao mdao = sqlsession.getMapper(MDao.class);
  		Member_Dto mdto = mdao.login_pw_search(id, email);
  		return mdto;
  		
  		
  	}
      
      
      
	
	
	
	
	

}
