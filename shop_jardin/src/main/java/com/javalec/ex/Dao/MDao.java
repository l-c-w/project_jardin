package com.javalec.ex.Dao;

//import org.apache.ibatis.annotations.Param;

public interface MDao {

	public void register(String id, String m_code, String pw, String name, String email, String email_agree,
			String sms_agree, String address1, String address2, int phone, String sol_lun, String introduce,
			String coffe_favor);
	

}
