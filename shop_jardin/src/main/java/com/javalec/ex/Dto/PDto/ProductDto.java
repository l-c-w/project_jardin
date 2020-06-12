package com.javalec.ex.Dto.PDto;

import java.sql.Timestamp;

public class ProductDto {

	public ProductDto() {
		super();
	}

	public ProductDto(int p_code, String p_case, String p_case2, String p_name, int p_price, int p_point,
			String p_producer, String p_expiry, String p_type, String p_capacity, String p_detail, String p_location,
			String p_gene, String p_import, int p_stock, String p_img1, String p_img2, String p_img3,
			String p_content_img, Timestamp p_wdate, Timestamp p_udate, String p_delflag) {

		super();
		this.p_code = p_code;
		this.p_case = p_case;
		this.p_case2 = p_case2;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_point = p_point;
		this.p_producer = p_producer;
		this.p_expiry = p_expiry;
		this.p_type = p_type;
		this.p_capacity = p_capacity;
		this.p_detail = p_detail;
		this.p_location = p_location;
		this.p_gene = p_gene;
		this.p_import = p_import;
		this.p_stock = p_stock;
		this.p_img1 = p_img1;
		this.p_img2 = p_img2;
		this.p_img3 = p_img3;
		this.p_content_img = p_content_img;
		this.p_wdate = p_wdate;
		this.p_udate = p_udate;
		this.p_delflag = p_delflag;
	}

	private int p_code; // 상품 코드
	private String p_category; // 상품 카테고리
	private String p_case; // 상품 분류
	private String p_case2; // 상품 분류2
	private String p_name; // 상품명
	private int p_price; // 상품 가격
	private int p_point; // 상품 포인트
	private String p_producer; // 제조원
	private String p_expiry; // 유통기한
	private String p_type; // 상품유형
	private String p_capacity; // 용량
	private String p_detail; // 원재료명
	private String p_location; // 소재지
	private String p_gene; // 유전자 재조합 유무
	private String p_import; // 수입식품
	private int p_stock; // 재고
	private String p_img1; // 제품 이미지1
	private String p_img2; // 제품 이미지2
	private String p_img3; // 제품 이미지3
	private String p_content_img; // 상제 이미지
	private Timestamp p_wdate; // 등록일
	private Timestamp p_udate; // 수정일
	private String p_delflag; // 삭제유무

	public int getP_code() {
		return p_code;
	}

	public void setP_code(int p_code) {
		this.p_code = p_code;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getP_case() {
		return p_case;
	}

	public void setP_case(String p_case) {
		this.p_case = p_case;
	}

	public String getP_case2() {
		return p_case2;
	}

	public void setP_case2(String p_case2) {
		this.p_case2 = p_case2;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_point() {
		return p_point;
	}

	public void setP_point(int p_point) {
		this.p_point = p_point;
	}

	public String getP_producer() {
		return p_producer;
	}

	public void setP_producer(String p_producer) {
		this.p_producer = p_producer;
	}

	public String getP_expiry() {
		return p_expiry;
	}

	public void setP_expiry(String p_expiry) {
		this.p_expiry = p_expiry;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_capacity() {
		return p_capacity;
	}

	public void setP_capacity(String p_capacity) {
		this.p_capacity = p_capacity;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	public String getP_location() {
		return p_location;
	}

	public void setP_location(String p_location) {
		this.p_location = p_location;
	}

	public String getP_gene() {
		return p_gene;
	}

	public void setP_gene(String p_gene) {
		this.p_gene = p_gene;
	}

	public String getP_import() {
		return p_import;
	}

	public void setP_import(String p_import) {
		this.p_import = p_import;
	}

	public int getP_stock() {
		return p_stock;
	}

	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}

	public String getP_img1() {
		return p_img1;
	}

	public void setP_img1(String p_img1) {
		this.p_img1 = p_img1;
	}

	public String getP_img2() {
		return p_img2;
	}

	public void setP_img2(String p_img2) {
		this.p_img2 = p_img2;
	}

	public String getP_img3() {
		return p_img3;
	}

	public void setP_img3(String p_img3) {
		this.p_img3 = p_img3;
	}

	public String getP_content_img() {
		return p_content_img;
	}

	public void setP_content_img(String p_content_img) {
		this.p_content_img = p_content_img;
	}

	public Timestamp getP_wdate() {
		return p_wdate;
	}

	public void setP_wdate(Timestamp p_wdate) {
		this.p_wdate = p_wdate;
	}

	public Timestamp getP_udate() {
		return p_udate;
	}

	public void setP_udate(Timestamp p_udate) {
		this.p_udate = p_udate;
	}

	public String getP_delflag() {
		return p_delflag;
	}

	public void setP_delflag(String p_delflag) {
		this.p_delflag = p_delflag;
	}

}
