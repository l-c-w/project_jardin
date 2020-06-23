package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class Nomember {

	public Nomember() {

	}

	public Nomember(String pay_code, String nom_id, String nom_name, String nom_email1, String nom_email2,
			String nom_phone1, String nom_phone2, String nom_phone3, String nom_post, String nom_address1,
			String nom_address2, String nom_pw, Timestamp nom_date) {
		this.pay_code = pay_code;
		this.nom_id = nom_id;
		this.nom_name = nom_name;
		this.nom_email1 = nom_email1;
		this.nom_email2 = nom_email2;
		this.nom_phone1 = nom_phone1;
		this.nom_phone2 = nom_phone2;
		this.nom_phone3 = nom_phone3;
		this.nom_post = nom_post;
		this.nom_address1 = nom_address1;
		this.nom_address2 = nom_address2;
		this.nom_pw = nom_pw;
		this.nom_date = nom_date;
	}

	private String pay_code;
	private String nom_id;
	private String nom_name;
	private String nom_email1, nom_email2;
	private String nom_phone1, nom_phone2, nom_phone3;
	private String nom_post;
	private String nom_address1;
	private String nom_address2;
	private Timestamp nom_date;
	private String nom_pw;

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
	}

	public String getNom_id() {
		return nom_id;
	}

	public void setNom_id(String nom_id) {
		this.nom_id = nom_id;
	}

	public String getNom_name() {
		return nom_name;
	}

	public void setNom_name(String nom_name) {
		this.nom_name = nom_name;
	}

	public String getNom_email1() {
		return nom_email1;
	}

	public void setNom_email1(String nom_email1) {
		this.nom_email1 = nom_email1;
	}

	public String getNom_email2() {
		return nom_email2;
	}

	public void setNom_email2(String nom_email2) {
		this.nom_email2 = nom_email2;
	}

	public String getNom_phone1() {
		return nom_phone1;
	}

	public void setNom_phone1(String nom_phone1) {
		this.nom_phone1 = nom_phone1;
	}

	public String getNom_phone2() {
		return nom_phone2;
	}

	public void setNom_phone2(String nom_phone2) {
		this.nom_phone2 = nom_phone2;
	}

	public String getNom_phone3() {
		return nom_phone3;
	}

	public void setNom_phone3(String nom_phone3) {
		this.nom_phone3 = nom_phone3;
	}

	public String getNom_post() {
		return nom_post;
	}

	public void setNom_post(String nom_post) {
		this.nom_post = nom_post;
	}

	public String getNom_address1() {
		return nom_address1;
	}

	public void setNom_address1(String nom_address1) {
		this.nom_address1 = nom_address1;
	}

	public String getNom_address2() {
		return nom_address2;
	}

	public void setNom_address2(String nom_address2) {
		this.nom_address2 = nom_address2;
	}

	public Timestamp getNom_date() {
		return nom_date;
	}

	public void setNom_date(Timestamp nom_date) {
		this.nom_date = nom_date;
	}

	public String getNom_pw() {
		return nom_pw;
	}

	public void setNom_pw(String nom_pw) {
		this.nom_pw = nom_pw;
	}

}
