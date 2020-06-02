package com.javalec.ex.Dto.CDto;

import java.sql.Timestamp;

public class P_ReviewDto {

	public P_ReviewDto() {

	}

	public P_ReviewDto(int pr_num, String id, String pr_code, String pr_title, String pr_content, String pr_file,
			int pr_score, int pr_hit, Timestamp pr_wdate, Timestamp pr_udate) {

		this.pr_num = pr_num;
		this.id = id;
		this.pr_code = pr_code;
		this.pr_title = pr_title;
		this.pr_content = pr_content;
		this.pr_file = pr_file;
		this.pr_score = pr_score;
		this.pr_hit = pr_hit;
		this.pr_wdate = pr_wdate;
		this.pr_udate = pr_udate;
	}

	private int pr_num;
	private String id;
	private String pr_code;
	private String pr_title;
	private String pr_content;
	private String pr_file;
	private int pr_score;
	private int pr_hit;
	private Timestamp pr_wdate;
	private Timestamp pr_udate;

	public int getPr_num() {
		return pr_num;
	}

	public void setPr_num(int pr_num) {
		this.pr_num = pr_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPr_code() {
		return pr_code;
	}

	public void setPr_code(String pr_code) {
		this.pr_code = pr_code;
	}

	public String getPr_title() {
		return pr_title;
	}

	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}

	public String getPr_content() {
		return pr_content;
	}

	public void setPr_content(String pr_content) {
		this.pr_content = pr_content;
	}

	public String getPr_file() {
		return pr_file;
	}

	public void setPr_file(String pr_file) {
		this.pr_file = pr_file;
	}

	public int getPr_score() {
		return pr_score;
	}

	public void setPr_score(int pr_score) {
		this.pr_score = pr_score;
	}

	public int getPr_hit() {
		return pr_hit;
	}

	public void setPr_hit(int pr_hit) {
		this.pr_hit = pr_hit;
	}

	public Timestamp getPr_wdate() {
		return pr_wdate;
	}

	public void setPr_wdate(Timestamp pr_wdate) {
		this.pr_wdate = pr_wdate;
	}

	public Timestamp getPr_udate() {
		return pr_udate;
	}

	public void setPr_udate(Timestamp pr_udate) {
		this.pr_udate = pr_udate;
	}

}
