package com.javalec.ex.Service.AService;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.ACDao;
import com.javalec.ex.Dto.EDto.EventDto;

public class AEvWriteService implements AService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		System.out.println("-----AEvWriteService-----");
		
//		Map<String, Object> map = model.asMap();
//		
//		EventDto eventDto = (EventDto)map.get("eventdto");
//		
//		System.out.println(eventDto.getE_start());
		
		ACDao dao = sqlSession.getMapper(ACDao.class);
		EventDto edto = new EventDto();	
		String e_type = request.getParameter("e_type");
		String e_apply = request.getParameter("e_apply");
		String e_title = request.getParameter("e_title");
		String e_content = request.getParameter("e_content");
		String e_file1 = request.getParameter("e_file1");
		String e_file2 = request.getParameter("e_file2");
		String e_file3 = request.getParameter("e_file3");
		String e_start = request.getParameter("e_start");
		String e_end = request.getParameter("e_end");	
		
		e_file1 = "e_file1";
		e_file2 = "e_file2";
		e_file3 = "e_file3";
		
		edto.setE_type(e_type);
		edto.setE_apply(e_apply);
		edto.setE_title(e_title);
		edto.setE_content(e_content);
		edto.setE_file1(e_file1);
		edto.setE_file2(e_file2);
		edto.setE_file3(e_file3);
		
		System.out.println("e_start : " + e_start);
		System.out.println("e_end : " + e_end);
//		java.sql.Timestamp e_start2 = java.sql.Timestamp.valueOf(e_start);
//		java.sql.Timestamp e_end2 = java.sql.Timestamp.valueOf(e_end);
//		edto.setE_start(e_start2);
//		edto.setE_end(e_end2);
//		System.out.println("e_start2 : " + e_start);
//		System.out.println("e_end2 : " + e_end2);
		
		System.out.println("e_type : " + e_type);
		System.out.println("e_apply : " + e_apply);
		System.out.println("e_title : " + e_title);
		System.out.println("e_content : " + e_content);
		System.out.println("e_file1 : " + e_file1);
		System.out.println("e_file2 : " + e_file2);
		System.out.println("e_file3 : " + e_file3);
		System.out.println("e_start : " + e_start);
		System.out.println("e_end : " + e_end);
		

		dao.eWriteDo(edto);		
	}

}
