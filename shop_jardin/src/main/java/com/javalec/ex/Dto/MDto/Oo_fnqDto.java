package com.javalec.ex.Dto.MDto;

import java.sql.Timestamp;

public class Oo_fnqDto {

	public Oo_fnqDto() {
		
		
	}

	public Oo_fnqDto(String oo_num, String id, String oo_type, String oo_title, String oo_content, String oo_file,
			Timestamp oo_wdate, Timestamp oo_udate, String oo_answer) {
		this.oo_num=oo_num;
		this.id=id;
		this.oo_type=oo_type;
		this.oo_title=oo_title;
		this.oo_content=oo_content;
		this.oo_file=oo_file;
		this.oo_wdate=oo_wdate;
		this.oo_udate=oo_udate;
		this.oo_answer=oo_answer;
	}

	
	private String oo_num;
	private String id;
	private String oo_type;
	private String oo_title;
	private String oo_content;
	private String oo_file;
	private Timestamp oo_wdate;
	private Timestamp oo_udate;
	private String oo_answer;
	
	public String getOo_num() {
		return oo_num;
	}

	public void setOo_num(String oo_num) {
		this.oo_num = oo_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOo_type() {
		return oo_type;
	}

	public void setOo_type(String oo_type) {
		this.oo_type = oo_type;
	}

	public String getOo_title() {
		return oo_title;
	}

	public void setOo_title(String oo_title) {
		this.oo_title = oo_title;
	}

	public String getOo_content() {
		return oo_content;
	}

	public void setOo_content(String oo_content) {
		this.oo_content = oo_content;
	}

	public String getOo_file() {
		return oo_file;
	}

	public void setOo_file(String oo_file) {
		this.oo_file = oo_file;
	}

	public Timestamp getOo_wdate() {
		return oo_wdate;
	}

	public void setOo_wdate(Timestamp oo_wdate) {
		this.oo_wdate = oo_wdate;
	}

	public Timestamp getOo_udate() {
		return oo_udate;
	}

	public void setOo_udate(Timestamp oo_udate) {
		this.oo_udate = oo_udate;
	}

	public String getOo_answer() {
		return oo_answer;
	}

	public void setOo_answer(String oo_answer) {
		this.oo_answer = oo_answer;
	}
	
}
