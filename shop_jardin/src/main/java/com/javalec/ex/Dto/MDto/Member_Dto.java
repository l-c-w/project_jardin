package com.javalec.ex.Dto.MDto;

import java.sql.Date;

public class Member_Dto {
	
	
	public Member_Dto() {
		
		
	}
	
	private String id;
	private String m_code;
	private String pw;
	private String name;
	private String email;
	private String email_agree;
	private String sms_agree;
	private String post;
	private String address1;
	private String address2;
	private String sol_lun;
	private String introduce;
	private String coffee_favor;

	
	int phone1, phone2, phone3;
	
	
	Date birth;
	Date join_date;
	

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail1(String email1) {
		this.email = email1;
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

	
	

	public int getPhone1() {
		return phone1;
	}

	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}

	public int getPhone2() {
		return phone2;
	}

	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}

	public int getPhone3() {
		return phone3;
	}

	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}

	
	
	
	
	
	

}
