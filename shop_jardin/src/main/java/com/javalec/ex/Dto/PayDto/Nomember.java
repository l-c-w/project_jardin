package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class Nomember {

	public Nomember() {

	}

	public Nomember(String pay_code, String id, String name, String email1, String email2, String phone1, String phone2,
			String phone3, String post, String address1, String address2, String nom_pw, Timestamp nom_date) {
		this.pay_code = pay_code;
		this.id = id;
		this.name = name;
		this.email1 = email1;
		this.email2 = email2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.post = post;
		this.address1 = address1;
		this.address2 = address2;
		this.nom_pw = nom_pw;
		this.nom_date = nom_date;
	}

	private String pay_code;
	private String id;
	private String name;
	private String email1, email2;
	private String phone1, phone2, phone3;
	private String post;
	private String address1;
	private String address2;
	private String nom_pw;
	private Timestamp nom_date;

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
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

	public String getNom_pw() {
		return nom_pw;
	}

	public void setNom_pw(String nom_pw) {
		this.nom_pw = nom_pw;
	}

	public Timestamp getNom_date() {
		return nom_date;
	}

	public void setNom_date(Timestamp nom_date) {
		this.nom_date = nom_date;
	}

}
