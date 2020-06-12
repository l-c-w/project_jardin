package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class Coupon_listDto {

	public Coupon_listDto() {
		
	}

	public Coupon_listDto(String cou_num, String cou_code, String id, Timestamp issue_date, Timestamp exp_date,
			Timestamp cou_state) {
		this.cou_num=cou_num;
		this.cou_code=cou_code;
		this.id=id;
		this.issue_date=issue_date;
		this.exp_date=exp_date;
		this.cou_state=exp_date;
	}
	
	private String cou_num;
	private String cou_code;
	private String id;
	private Timestamp issue_date;
	private Timestamp exp_date;
	private Timestamp cou_state;
	
	public String getCou_num() {
		return cou_num;
	}

	public void setCou_num(String cou_num) {
		this.cou_num = cou_num;
	}

	public String getCou_code() {
		return cou_code;
	}

	public void setCou_code(String cou_code) {
		this.cou_code = cou_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getIssue_date() {
		return issue_date;
	}

	public void setIssue_date(Timestamp issue_date) {
		this.issue_date = issue_date;
	}

	public Timestamp getExp_date() {
		return exp_date;
	}

	public void setExp_date(Timestamp exp_date) {
		this.exp_date = exp_date;
	}

	public Timestamp getCou_state() {
		return cou_state;
	}

	public void setCou_state(Timestamp cou_state) {
		this.cou_state = cou_state;
	}
	
	
}
