package com.javalec.ex.Service.PayService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.javalec.ex.Dao.PayDao;
import com.javalec.ex.Dto.MDto.Member_Dto;

public class MemCService implements PayService {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		PayDao payDao = sqlSession.getMapper(PayDao.class);
		Member_Dto member_Dto = (Member_Dto) map.get("member_info");
		String id = (String) map.get("id");

		String email = member_Dto.getEmail() + "@" + member_Dto.getIntroduce();
		System.out.println(email);
		member_Dto.setEmail(email);
		member_Dto.setId(id);
		System.out.println(member_Dto.getM_code());
		System.out.println(member_Dto.getPw());
		System.out.println(member_Dto.getName());
		System.out.println(member_Dto.getId());
		System.out.println(member_Dto.getEmail());
		System.out.println(member_Dto.getPhone2());
		payDao.update_member(member_Dto);

	}

}
