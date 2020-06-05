package com.javalec.ex.Dto.CDto;

import java.sql.Timestamp;

public class C_ReviewDto {

	public C_ReviewDto() {

	}

	public C_ReviewDto(int cr_num, String id, String p_code, String cr_title, String cr_content, int cr_score,
			int cr_hit, Timestamp cr_wdate, Timestamp cr_udate, int cr_group) {

		this.cr_num = cr_num;
		this.id = id;
		this.p_code = p_code;
		this.cr_title = cr_title;
		this.cr_content = cr_content;
		this.cr_score = cr_score;
		this.cr_hit = cr_hit;
		this.cr_wdate = cr_wdate;
		this.cr_udate = cr_udate;
		this.cr_group = cr_group;
	}

	private int cr_num;
	private String id;
	private String p_code;
	private String cr_title;
	private String cr_content;
	
	private int cr_score;
	private int cr_hit;
	
	private Timestamp cr_wdate;
	private Timestamp cr_udate;
	
	private int cr_group;

	public int getCr_num() {
		return cr_num;
	}

	public void setCr_num(int cr_num) {
		this.cr_num = cr_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getCr_title() {
		return cr_title;
	}

	public void setCr_title(String cr_title) {
		this.cr_title = cr_title;
	}

	public String getCr_content() {
		return cr_content;
	}

	public void setCr_content(String cr_content) {
		this.cr_content = cr_content;
	}

	public int getCr_score() {
		return cr_score;
	}

	public void setCr_score(int cr_score) {
		this.cr_score = cr_score;
	}

	public int getCr_hit() {
		return cr_hit;
	}

	public void setCr_hit(int cr_hit) {
		this.cr_hit = cr_hit;
	}

	public Timestamp getCr_wdate() {
		return cr_wdate;
	}

	public void setCr_wdate(Timestamp cr_wdate) {
		this.cr_wdate = cr_wdate;
	}

	public Timestamp getCr_udate() {
		return cr_udate;
	}

	public void setCr_udate(Timestamp cr_udate) {
		this.cr_udate = cr_udate;
	}

	public int getCr_group() {
		return cr_group;
	}

	public void setCr_group(int cr_group) {
		this.cr_group = cr_group;
	}

}
