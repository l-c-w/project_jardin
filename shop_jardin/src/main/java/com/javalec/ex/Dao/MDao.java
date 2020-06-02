package com.javalec.ex.Dao;

import java.security.Timestamp;

public interface MDao {
	

	public void register(String id, String m_code, String pw, String email, String email_agree, String sms_agree, String address1, String address2, String phone, Timestamp birth, String sol_lun, String introduce, String coffee_favor);

	

	
	
}
