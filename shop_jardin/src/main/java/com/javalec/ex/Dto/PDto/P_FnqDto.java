package com.javalec.ex.Dto.PDto;

import java.sql.Timestamp;

public class P_FnqDto {

	public P_FnqDto() {

	}

	public P_FnqDto(int pf_num, String p_code, String id, String pf_title, String pf_content, String pf_secret,
			String pf_answer, Timestamp pf_wdate, Timestamp pf_udate, int pf_group) {

		this.pf_num = pf_num;
		this.p_code = p_code;
		this.id = id;
		this.pf_title = pf_title;
		this.pf_content = pf_content;
		this.pf_secret = pf_secret;
		this.pf_answer = pf_answer;
		this.pf_wdate = pf_wdate;
		this.pf_udate = pf_udate;
		this.pf_group = pf_group;
	}

	private int pf_num;
	private String p_code;
	private String id;
	private String pf_title;
	private String pf_content;
	private String pf_secret;
	private String pf_answer;
	private Timestamp pf_wdate;
	private Timestamp pf_udate;
	private int pf_group;

	public int getPf_num() {
		return pf_num;
	}

	public void setPf_num(int pf_num) {
		this.pf_num = pf_num;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPf_title() {
		return pf_title;
	}

	public void setPf_title(String pf_title) {
		this.pf_title = pf_title;
	}

	public String getPf_content() {
		return pf_content;
	}

	public void setPf_content(String pf_content) {
		this.pf_content = pf_content;
	}

	public String getPf_secret() {
		return pf_secret;
	}

	public void setPf_secret(String pf_secret) {
		this.pf_secret = pf_secret;
	}

	public String getPf_answer() {
		return pf_answer;
	}

	public void setPf_answer(String pf_answer) {
		this.pf_answer = pf_answer;
	}

	public Timestamp getPf_wdate() {
		return pf_wdate;
	}

	public void setPf_wdate(Timestamp pf_wdate) {
		this.pf_wdate = pf_wdate;
	}

	public Timestamp getPf_udate() {
		return pf_udate;
	}

	public void setPf_udate(Timestamp pf_udate) {
		this.pf_udate = pf_udate;
	}

	public int getPf_group() {
		return pf_group;
	}

	public void setPf_group(int pf_group) {
		this.pf_group = pf_group;
	}
}
