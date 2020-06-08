package com.javalec.ex.Dto.PayDto;

import java.sql.Timestamp;

public class PointDto {

	public PointDto() {

	}

	public PointDto(String po_code, String id, String po_case, int po_point, Timestamp pp_date) {
		this.po_code=po_code;
		this.id=id;
		this.po_case=po_case;
		this.po_point=po_point;
		this.pp_date=pp_date;
	}

	private String po_code;
	private String id;
	private String po_case;
	private int po_point;
	private Timestamp pp_date;
	
	public String getPo_code() {
		return po_code;
	}

	public void setPo_code(String po_code) {
		this.po_code = po_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPo_case() {
		return po_case;
	}

	public void setPo_case(String po_case) {
		this.po_case = po_case;
	}

	public int getPo_point() {
		return po_point;
	}

	public void setPo_point(int po_point) {
		this.po_point = po_point;
	}

	public Timestamp getPp_date() {
		return pp_date;
	}

	public void setPp_date(Timestamp pp_date) {
		this.pp_date = pp_date;
	}

}
