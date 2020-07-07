package com.javalec.ex.Dao;

import java.sql.Date;
import java.util.ArrayList;

import com.javalec.ex.Dto.MDto.CommentDto;
import com.javalec.ex.Dto.MDto.Member_Dto;

//import org.apache.ibatis.annotations.Param;

public interface MDao {

	public void register(String id, String m_code, String pw, String name, String email, String email_agree,
			String sms_agree, String address1, String address2, String sol_lun, String introduce,
			String coffe_favor, Date birth, String post, int phone1, int phone2, int phone3);
	
	
	public int idcheck(String id);
	
	public int emailcheck(String email);
	
	
	public Member_Dto login1(String id);
	
	public Member_Dto login2(String id, String pw);
	
	
	public Member_Dto login_search(String name, String email);
	
	public Member_Dto login_pw_search(String id, String email);
	
	
	public int idpwch (String id, String pw);
	
	public ArrayList<Member_Dto> m_list();
	
	public int m_count();
	
	public Member_Dto member_change(String id);
	
	public Member_Dto password_change(String pw, String id);
	
	public void withdrawal(String id, String pw);
	
	public void change_ok(String pw, String email, String email_agree,
			String sms_agree, String address1, String address2, String sol_lun, String introduce,
			String coffe_favor, String post, int phone1, int phone2, int phone3, String id);
	
	
	
	
	// 댓글 ★★★★★★★★★★★★★★★★★★★★★★
	
	public ArrayList<CommentDto> comment_list();
	
	public void comment_insert(CommentDto cdto);
	
	public void comment_delete(CommentDto cdto);
	
	public void comment_update(CommentDto cdto);
	
	public CommentDto ex_check(CommentDto cdto);
	
	
	
	
}
