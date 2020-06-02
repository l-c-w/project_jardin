package com.javalec.ex.Dto.MDto;

import java.sql.Timestamp;

public class NoticeDto {

	public NoticeDto() {
		
	}

	public NoticeDto(String n_num, String n_title, String n_content, int n_hit, Timestamp n_wdate, Timestamp n_udate) {
		this.n_num=n_num;
		this.n_title=n_title;
		this.n_content=n_content;
		this.n_hit=n_hit;
		this.n_wdate=n_wdate;
		this.n_udate=n_udate;
	}
	
	private String n_num;
	private String n_title;
	private String n_content;
	private int n_hit;
	private Timestamp n_wdate;
	private Timestamp n_udate;
	
	public String getN_num() {
		return n_num;
	}

	public void setN_num(String n_num) {
		this.n_num = n_num;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public int getN_hit() {
		return n_hit;
	}

	public void setN_hit(int n_hit) {
		this.n_hit = n_hit;
	}

	public Timestamp getN_wdate() {
		return n_wdate;
	}

	public void setN_wdate(Timestamp n_wdate) {
		this.n_wdate = n_wdate;
	}

	public Timestamp getN_udate() {
		return n_udate;
	}

	public void setN_udate(Timestamp n_udate) {
		this.n_udate = n_udate;
	}
	
}
