package com.javalec.ex.Dto.MDto;

import java.security.Timestamp;

public class Member_Dto {
	
	
	public Member_Dto() {
		
		
	}
	
	String id;
	String m_code;
	String pw;
	String name;
	String email1;
	String email2;
	String email_agree;
	String sms_agree;
	String post;
	String address1;
	String address2;
	String sol_lun;
	String introduce;
	String coffee_favor;

	int phone;

	Timestamp birth;
	Timestamp join_date;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getEmail_agree() {
		return email_agree;
	}

	public void setEmail_agree(String email_agree) {
		this.email_agree = email_agree;
	}

	public String getSms_agree() {
		return sms_agree;
	}

	public void setSms_agree(String sms_agree) {
		this.sms_agree = sms_agree;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getSol_lun() {
		return sol_lun;
	}

	public void setSol_lun(String sol_lun) {
		this.sol_lun = sol_lun;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getCoffee_favor() {
		return coffee_favor;
	}

	public void setCoffee_favor(String coffee_favor) {
		this.coffee_favor = coffee_favor;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public Timestamp getBirth() {
		return birth;
	}

	public void setBirth(Timestamp birth) {
		this.birth = birth;
	}

	public Timestamp getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	}

}
