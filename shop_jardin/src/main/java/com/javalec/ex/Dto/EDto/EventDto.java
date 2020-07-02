package com.javalec.ex.Dto.EDto;

import java.sql.Timestamp;

public class EventDto {

	public EventDto() {
		
	}

	public EventDto(String e_code, String e_type, String e_apply, String e_title, String e_content, String e_file1,
			String e_file2, String e_file3, Timestamp e_start, Timestamp e_end, Timestamp e_wdate, Timestamp e_udate) {
		this.e_code=e_code;
		this.e_type=e_type;
		this.e_apply=e_apply;
		this.e_title=e_title;
		this.e_content=e_content;
		this.e_file1=e_file1;
		this.e_file2=e_file2;
		this.e_file3=e_file3;
		this.e_start=e_start;
		this.e_end=e_end;
		this.e_wdate=e_wdate;
		this.e_udate=e_udate;
	}
		
	private String e_code;
	private String e_type;
	private String e_apply;
	private String e_title;
	private String e_content;
	private String e_file1;
	private String e_file2;
	private String e_file3;
	private Timestamp e_start;
	private Timestamp e_end;
	private Timestamp e_wdate;
	private Timestamp e_udate;
	
	public String getE_code() {
		return e_code;
	}
	public void setE_code(String e_code) {
		this.e_code = e_code;
	}
	public String getE_type() {
		return e_type;
	}
	public void setE_type(String e_type) {
		this.e_type = e_type;
	}
	public String getE_apply() {
		return e_apply;
	}
	public void setE_apply(String e_apply) {
		this.e_apply = e_apply;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_content() {
		return e_content;
	}
	public void setE_content(String e_content) {
		this.e_content = e_content;
	}
	public String getE_file1() {
		return e_file1;
	}
	public void setE_file1(String e_file1) {
		this.e_file1 = e_file1;
	}
	public String getE_file2() {
		return e_file2;
	}
	public void setE_file2(String e_file2) {
		this.e_file2 = e_file2;
	}
	public String getE_file3() {
		return e_file3;
	}
	public void setE_file3(String e_file3) {
		this.e_file3 = e_file3;
	}

	public Timestamp getE_start() {
		return e_start;
	}

	public void setE_start(Timestamp e_start) {
		this.e_start = e_start;
	}

	public Timestamp getE_end() {
		return e_end;
	}

	public void setE_end(Timestamp e_end) {
		this.e_end = e_end;
	}

	public Timestamp getE_wdate() {
		return e_wdate;
	}
	public void setE_wdate(Timestamp e_wdate) {
		this.e_wdate = e_wdate;
	}
	public Timestamp getE_udate() {
		return e_udate;
	}
	public void setE_udate(Timestamp e_udate) {
		this.e_udate = e_udate;
	}
	
	
}
