package com.javalec.ex.Dto.MDto;

import java.sql.Date;
import java.sql.Timestamp;

public class NoticeDto {

	public NoticeDto() {

	}

	public NoticeDto(String n_num, String n_title, String n_content, int n_hit, Date n_wdate, Date n_udate) {
		this.n_num = n_num;
		this.n_title = n_title;
		this.n_content = n_content;
		this.n_hit = n_hit;
		this.n_wdate = n_wdate;
		this.n_udate = n_udate;
	}

	private String n_num;
	private String n_title;
	private String n_content;
	private int n_hit;
	private Date n_wdate;
	private Date n_udate;

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

	public Date getN_wdate() {
		return n_wdate;
	}

	public void setN_wdate(Date n_wdate) {
		this.n_wdate = n_wdate;
	}

	public Date getN_udate() {
		return n_udate;
	}

	public void setN_udate(Date n_udate) {
		this.n_udate = n_udate;
	}

}
