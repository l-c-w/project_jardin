package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class RefundDto {

	public RefundDto() {

	}

	public RefundDto(String ref_code, String pay_code, String id, String p_code, String ref_type, String ref_reason,
			String return_check, String r_file, String refund_state, Timestamp refund_date, Timestamp refund_edate) {
		this.ref_code = ref_code;
		this.pay_code = pay_code;
		this.id = id;
		this.p_code = p_code;
		this.ref_type = ref_type;
		this.ref_reason = ref_reason;
		this.return_check = return_check;
		this.r_file = r_file;
		this.refund_state = refund_state;
		this.refund_date = refund_date;
		this.refund_edate = refund_edate;
	}

	private String ref_code;
	private String pay_code;
	private String id;
	private String p_code;
	private String ref_type;
	private String ref_reason;
	private String return_check;
	private String r_file;
	private String refund_state;
	private Timestamp refund_date;
	private Timestamp refund_edate;

	public String getRef_code() {
		return ref_code;
	}

	public void setRef_code(String ref_code) {
		this.ref_code = ref_code;
	}

	public String getPay_code() {
		return pay_code;
	}

	public void setPay_code(String pay_code) {
		this.pay_code = pay_code;
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

	public String getRef_type() {
		return ref_type;
	}

	public void setRef_type(String ref_type) {
		this.ref_type = ref_type;
	}

	public String getRef_reason() {
		return ref_reason;
	}

	public void setRef_reason(String ref_reason) {
		this.ref_reason = ref_reason;
	}

	public String getReturn_check() {
		return return_check;
	}

	public void setReturn_check(String return_check) {
		this.return_check = return_check;
	}

	public String getR_file() {
		return r_file;
	}

	public void setR_file(String r_file) {
		this.r_file = r_file;
	}

	public String getRefund_state() {
		return refund_state;
	}

	public void setRefund_state(String refund_state) {
		this.refund_state = refund_state;
	}

	public Timestamp getRefund_date() {
		return refund_date;
	}

	public void setRefund_date(Timestamp refund_date) {
		this.refund_date = refund_date;
	}

	public Timestamp getRefund_edate() {
		return refund_edate;
	}

	public void setRefund_edate(Timestamp refund_edate) {
		this.refund_edate = refund_edate;
	}

}
