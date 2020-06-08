package com.javalec.ex.Dto.PayDto;

public class Nomember {

	public Nomember() {

	}

	public Nomember(String nom_id, String nom_email, String nom_phone, String nom_post, String nom_address1,
			String nom_address2, String nom_pmethod, String nom_pinfo, String nom_date) {
		this.nom_id=nom_id;
		this.nom_email=nom_email;
		this.nom_phone=nom_phone;
		this.nom_post=nom_post;
		this.nom_address1=nom_address1;
		this.nom_address2=nom_address2;
		this.nom_pmethod=nom_pmethod;
		this.nom_pinfo=nom_pinfo;
		this.nom_date=nom_date;
	}

	private String nom_id;
	private String nom_email;
	private String nom_phone;
	private String nom_post;
	private String nom_address1;
	private String nom_address2;
	private String nom_pmethod;
	private String nom_pinfo;
	private String nom_date;
	
	public String getNom_id() {
		return nom_id;
	}

	public void setNom_id(String nom_id) {
		this.nom_id = nom_id;
	}

	public String getNom_email() {
		return nom_email;
	}

	public void setNom_email(String nom_email) {
		this.nom_email = nom_email;
	}

	public String getNom_phone() {
		return nom_phone;
	}

	public void setNom_phone(String nom_phone) {
		this.nom_phone = nom_phone;
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

	public String getNom_pmethod() {
		return nom_pmethod;
	}

	public void setNom_pmethod(String nom_pmethod) {
		this.nom_pmethod = nom_pmethod;
	}

	public String getNom_pinfo() {
		return nom_pinfo;
	}

	public void setNom_pinfo(String nom_pinfo) {
		this.nom_pinfo = nom_pinfo;
	}

	public String getNom_date() {
		return nom_date;
	}

	public void setNom_date(String nom_date) {
		this.nom_date = nom_date;
	}

}
