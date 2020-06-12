package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class Coupon_listDto {

	public Coupon_listDto() {

	}

	public Coupon_listDto(int exp_check, String cou_name, int cou_reward, Timestamp issue_date, Timestamp exp_date,
			Timestamp cou_state) {
		this.exp_check = exp_check;
		this.cou_name = cou_name;
		this.cou_reward = cou_reward;
		this.issue_date = issue_date;
		this.exp_date = exp_date;
		this.cou_state = cou_state;
	}

	private String cou_name;
	private int cou_reward, exp_check;
	private Timestamp issue_date, exp_date, cou_state;

	public String getCou_name() {
		return cou_name;
	}

	public void setCou_name(String cou_name) {
		this.cou_name = cou_name;
	}

	public int getCou_reward() {
		return cou_reward;
	}

	public void setCou_reward(int cou_reward) {
		this.cou_reward = cou_reward;
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

	public int getExp_check() {
		return exp_check;
	}

	public void setExp_check(int exp_check) {
		this.exp_check = exp_check;
	}

}
