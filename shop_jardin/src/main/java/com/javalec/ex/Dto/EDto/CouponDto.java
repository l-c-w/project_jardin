package com.javalec.ex.Dto.EDto;

import java.sql.Timestamp;

public class CouponDto {

	public CouponDto() {
		
	}

	public CouponDto(String cou_code, String e_code, String cou_name, String cou_reward, String cou_limit,
			Timestamp cou_start, Timestamp coud_end, int cou_exp) {
		this.cou_code=cou_code;
		this.e_code=e_code;
		this.cou_name=cou_name;
		this.cou_reward=cou_reward;
		this.cou_limit=cou_limit;
		this.cou_start=cou_start;
		this.coud_end=coud_end;
		this.cou_exp=cou_exp;
	}
	
	private String cou_code;
	private String e_code;
	private String cou_name;
	private String cou_reward;
	private String cou_limit;
	private Timestamp cou_start;
	private Timestamp coud_end;
	private int cou_exp;
	
	public String getCou_code() {
		return cou_code;
	}

	public void setCou_code(String cou_code) {
		this.cou_code = cou_code;
	}

	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}

	public String getCou_name() {
		return cou_name;
	}

	public void setCou_name(String cou_name) {
		this.cou_name = cou_name;
	}

	public String getCou_reward() {
		return cou_reward;
	}

	public void setCou_reward(String cou_reward) {
		this.cou_reward = cou_reward;
	}

	public String getCou_limit() {
		return cou_limit;
	}

	public void setCou_limit(String cou_limit) {
		this.cou_limit = cou_limit;
	}

	public Timestamp getCou_start() {
		return cou_start;
	}

	public void setCou_start(Timestamp cou_start) {
		this.cou_start = cou_start;
	}

	public Timestamp getCoud_end() {
		return coud_end;
	}

	public void setCoud_end(Timestamp coud_end) {
		this.coud_end = coud_end;
	}

	public int getCou_exp() {
		return cou_exp;
	}

	public void setCou_exp(int cou_exp) {
		this.cou_exp = cou_exp;
	}
	
	
	
}
