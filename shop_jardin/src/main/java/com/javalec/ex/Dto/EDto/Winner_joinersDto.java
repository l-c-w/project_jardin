package com.javalec.ex.Dto.EDto;

import java.sql.Timestamp;

public class Winner_joinersDto {

	public Winner_joinersDto() {
		
	}

	public Winner_joinersDto(String e_code, String w_code, String w_title, String w_content, int w_hit,
			Timestamp w_wdate, Timestamp w_udate, String w_state) {
		this.e_code=e_code;
		this.w_code=w_code;
		this.w_title=w_title;
		this.w_content=w_content;
		this.w_hit=w_hit;
		this.w_wdate=w_wdate;
		this.w_udate=w_udate;
		this.w_state=w_state;
	}

	private String e_code;
	private String w_code;
	private String w_title;
	private String w_content;
	private int w_hit;
	private Timestamp w_wdate;
	private Timestamp w_udate;
	private String w_state;
	
	
	public String getE_code() {
		return e_code;
	}

	public void setE_code(String e_code) {
		this.e_code = e_code;
	}

	public String getW_code() {
		return w_code;
	}

	public void setW_code(String w_code) {
		this.w_code = w_code;
	}

	public String getW_title() {
		return w_title;
	}

	public void setW_title(String w_title) {
		this.w_title = w_title;
	}

	public String getW_content() {
		return w_content;
	}

	public void setW_content(String w_content) {
		this.w_content = w_content;
	}

	public int getW_hit() {
		return w_hit;
	}

	public void setW_hit(int w_hit) {
		this.w_hit = w_hit;
	}

	public Timestamp getW_wdate() {
		return w_wdate;
	}

	public void setW_wdate(Timestamp w_wdate) {
		this.w_wdate = w_wdate;
	}

	public Timestamp getW_udate() {
		return w_udate;
	}

	public void setW_udate(Timestamp w_udate) {
		this.w_udate = w_udate;
	}

	public String getW_state() {
		return w_state;
	}

	public void setW_state(String w_state) {
		this.w_state = w_state;
	}
	
}
