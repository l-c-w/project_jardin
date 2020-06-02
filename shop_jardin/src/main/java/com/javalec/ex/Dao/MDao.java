package com.javalec.ex.Dao;

//import org.apache.ibatis.annotations.Param;

public interface MDao {

//	public void register(
//			@Param("id") String id,
//			@Param("m_code") String m_code,
//			@Param("pw") String pw, 
//			@Param("email") String email,
//			@Param("email_agree") String email_agree,
//			@Param("sms_agree") String sms_agree,
//			@Param("address1") String address1,
//			@Param("address2")  String address2,
//			@Param("phone") int phone,
//			@Param("sol_lun") String sol_lun,
//			@Param("introduce") String introduce);

	public void register(String id, String m_code, String pw, String name, String email, String email_agree,
			String sms_agree, String address1, String address2, int phone, String sol_lun, String introduce,
			String coffe_favor);

}
