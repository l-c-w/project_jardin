<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/admin_product.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/prefixfree.dynamic-dom.min.js"></script>
<script type="text/javascript" src="js/admin_product.js"></script>
</head>
<body>
<%@include file="admin_header.jsp" %>
	<!-- --------------------------------------------------------------------------------------------------------------------------- -->
<section>
		<div id="top">
			<h1>상품입력</h1>
			<ul>
				<li>목록</li>
				<li>상품보기</li>
				<li>확인</li>
			</ul>
		</div>


		</div>

		<div id="product_sort">
			<h4>상품분류</h4>

			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
			</div>
			<p>기본분류는 반드시 선택하셔야 합니다. 하나의 상품에 최대 3개의 다른 분류를 지정할 수 있습니다.</p>
			<table>
				<tr>
					<th>기본분류</th>
					<td><span>기본분류를 선택하면, 판매/재고/HTML사용/판매자 E-mail 등을, 선택한
							분류의 기본값으로 설정합니다.</span>
						<form action="" name="" method="get" id="">
							<select name="b_sort">
								<option value="" selected>선택하세요</option>
								<option value="20">TOP/PANTS</option>
								<option value="2010">&nbsp;TOP</option>
								<option value="201010">&nbsp;&nbsp;셔츠</option>
								<option value="20101010">&nbsp;&nbsp;&nbsp;체크/슬림</option>
								<option value="2010101001">&nbsp;&nbsp;&nbsp;&nbsp;체크</option>
								<option value="2010101002">&nbsp;&nbsp;&nbsp;&nbsp;슬림</option>
								<option value="20101011">&nbsp;&nbsp;&nbsp;드레스셔츠</option>
								<option value="201011">&nbsp;&nbsp;티</option>
								<option value="2011">&nbsp;PANTS</option>
								<option value="201110">&nbsp;&nbsp;청바지</option>
							</select>
						</form></td>
				</tr>

				<tr>
					<th>2차 분류</th>
					<td><span>2차 분류는 기본 분류의 하위 분류 개념이 아니므로 기본 분류 선택시 해당 상품이
							포함될 최하위 분류만 선택하시면 됩니다.</span>
						<form action="" name="" method="get" id="">
							<select name="snd_sort">
								<option value="" selected>선택하세요</option>
								<option value="20">TOP/PANTS</option>
								<option value="2010">&nbsp;TOP</option>
								<option value="201010">&nbsp;&nbsp;셔츠</option>
								<option value="20101010">&nbsp;&nbsp;&nbsp;체크/슬림</option>
								<option value="2010101001">&nbsp;&nbsp;&nbsp;&nbsp;체크</option>
								<option value="2010101002">&nbsp;&nbsp;&nbsp;&nbsp;슬림</option>
								<option value="20101011">&nbsp;&nbsp;&nbsp;드레스셔츠</option>
								<option value="201011">&nbsp;&nbsp;티</option>
								<option value="2011">&nbsp;PANTS</option>
								<option value="201110">&nbsp;&nbsp;청바지</option>
							</select>
						</form></td>
				</tr>

				<tr>
					<th>3차 분류</th>
					<td><span>3차 분류는 기본 분류의 하위 분류 개념이 아니므로 기본 분류 선택시 해당 상품이
							포함될 최하위 분류만 선택하시면 됩니다.</span>
						<form action="" name="" method="get" id="">
							<select name="trd_sort">
								<option value="" selected>선택하세요</option>
								<option value="20">TOP/PANTS</option>
								<option value="2010">&nbsp;TOP</option>
								<option value="201010">&nbsp;&nbsp;셔츠</option>
								<option value="20101010">&nbsp;&nbsp;&nbsp;체크/슬림</option>
								<option value="2010101001">&nbsp;&nbsp;&nbsp;&nbsp;체크</option>
								<option value="2010101002">&nbsp;&nbsp;&nbsp;&nbsp;슬림</option>
								<option value="20101011">&nbsp;&nbsp;&nbsp;드레스셔츠</option>
								<option value="201011">&nbsp;&nbsp;티</option>
								<option value="2011">&nbsp;PANTS</option>
								<option value="201110">&nbsp;&nbsp;청바지</option>
							</select>
						</form></td>
				</tr>
			</table>
		</div>

		<div id="product_b_info">
			<h4>기본정보</h4>
			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
			</div>
			<table>
				<tr>
					<th>상품코드</th>
					<td colspan="2"><span>상품의 코드는 10자리 숫자로 자동생성합니다. 직접
							상품코드를 입력할 수도 있습니다. 상품코드는 영문자, 숫자, - 만 입력 가능합니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="product_code" id="product_code"
								class="text_type1">
						</form></td>
				</tr>

				<tr>
					<th>상품명</th>
					<td colspan="2"><span>HTML 입력이 불가합니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="product_name" id="product_name"
								class="text_type2">
						</form></td>
				</tr>

				<tr>
					<th>기본설명</th>
					<td><span>상품명 하단에 상품에 대한 추가적인 설명이 필요한 경우에 입력합니다. HTML
							입력도 가능합니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="product_binfo" id="product_binfo"
								class="text_type2">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="binfo_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="binfo_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>출력순서</th>
					<td><span>숫자가 작을 수록 상위에 출력됩니다. 음수 입력도 가능하며 입력 가능 범위는
							-2147483648 부터 2147483647 까지입니다.<br> <strong>입력하지
								않으면 자동으로 출력됩니다.</strong>
					</span>
						<form action="" name="" method="get">
							<input type="text" name="product_code" id="product_code"
								class="text_type1">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="pseq_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="pseq_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>상품유형</th>
					<td id="ptype_select"><span>메인화면에 유형별로 출력할때 사용합니다.이곳에
							체크하게되면 상품리스트에서 유형별로 정렬할때 체크된 상품이 가장 먼저 출력됩니다.</span>
						<form action="" name="ptype_select" method="get">
							<ul>
								<li><label><input type="checkbox"
										name="ptype_choice" value="hit">히트<img alt="히트"
										src="images/icon_hit.gif"> </label></li>
								<li><label><input type="checkbox"
										name="ptype_choice" value="rec">추천<img alt="추천"
										src="images/icon_rec.gif"></label></li>
								<li><label><input type="checkbox"
										name="ptype_choice" value="new">신상품<img alt="신상품"
										src="images/icon_new.gif"></label></li>
								<li><label><input type="checkbox"
										name="ptype_choice" value="best">인기<img alt="인기"
										src="images/icon_best.gif"></label></li>
								<li><label><input type="checkbox"
										name="ptype_choice" value="discount">할인<img alt="할인"
										src="images/icon_discount.gif"></label></li>
							</ul>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="ptype_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="ptype_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>제조사</th>
					<td><span>입력하지 않으면 상품상세페이지에 출력하지 않습니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="made_in" class="text_type3">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="madein_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="madein_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>원산지</th>
					<td><span>입력하지 않으면 상품상세페이지에 출력하지 않습니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="p_origin" class="text_type3">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_origin_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_origin_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>브랜드</th>
					<td><span>입력하지 않으면 상품상세페이지에 출력하지 않습니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="p_brand" class="text_type3">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_brand_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_brand_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>모델</th>
					<td><span>입력하지 않으면 상품상세페이지에 출력하지 않습니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="p_model" class="text_type3">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_model_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_model_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>전화문의</th>
					<td><span>상품 금액 대신 전화문의로 표시됩니다.</span>
						<form action="" name="" method="get">
							<label><input type="checkbox" name="tel_ask"
								class="yes_check">예</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="tel_ask_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="tel_ask_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>판매가능</th>
					<td><span>잠시 판매를 중단하거나 재고가 없을 경우에 체크를 해제해 놓으면 출력되지 않으며,
							주문도 받지 않습니다.</span>
						<form action="" name="" method="get">
							<label><input type="checkbox" name="sell_pos"
								class="yes_check">예</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="sell_pos_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="sell_pos_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>쿠폰적용안함</th>
					<td><span>설정에 체크하시면 쿠폰 생성 때 상품 검색 결과에 노출되지 않습니다.</span>
						<form action="" name="" method="get">
							<label><input type="checkbox" name="coupon_check"
								class="yes_check">예</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="coupon_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="coupon_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>네이버쇼핑 상품ID</th>
					<td colspan="2"><span>네이버쇼핑에 입점한 경우 네이버쇼핑 상품ID를 입력하시면
							네이버페이와 연동됩니다.<br> 일부 쇼핑몰의 경우 네이버쇼핑 상품ID 대신 쇼핑몰 상품ID를 입력해야 하는
							경우가 있습니다.<br> 네이버페이 연동과정에서 이 부분에 대한 안내가 이뤄지니 안내받은 대로 값을
							입력하시면 됩니다.<br>
					</span>
						<form action="" name="" method="get">
							<input type="text" name="navershop_id" class="text_type1">
						</form></td>
				</tr>

				<tr class="tarea_type">
					<th>상품설명</th>
					<td colspan="2">
						<form action="" name="" method="get">
							<textarea rows="15" cols="190" name="p_sub"></textarea>
						</form>
					</td>

				</tr>

				<tr class="tarea_type">
					<th>모바일 상품설명</th>
					<td colspan="2">
						<form action="" name="" method="get">
							<textarea rows="15" cols="190" name="mp_sub"></textarea>
						</form>
					</td>

				</tr>

				<tr>
					<th>판매자 e-mail</th>
					<td><span>운영자와 실제 판매자가 다른 경우 실제 판매자의 e-mail을 입력하면, 상품
							주문 시점을 기준으로 실제 판매자에게도 주문서를 발송합니다.</span>
						<form action="" name="" method="get">
							<input type="text" name="seller_email" class="text_type3">
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="seller_email_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="seller_email_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr class="tarea_type">
					<th>상점메모</th>
					<td>
						<form action="" name="" method="get">
							<textarea rows="15" cols="162" name="p_sub"></textarea>
						</form>
					</td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_sub_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_sub_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>
			</table>
		</div>

		<div id="product_a_info">
			<h4>상품 요약정보</h4>

			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
			</div>
			<p>
				<span id="notice_red">전자상거래 등에서의 상품 등의 정보제공에 관한 고시</span>에 따라 총 35개
				상품군에 대해 상품 특성 등을 양식에 따라 입력할 수 있습니다.
			</p>
			<table>
				<tr>
					<td colspan="3" id="p_categorytd"><span>상품군을 선택하면 자동으로
							항목이 변환됩니다.</span>
						<form action="" name="" method="get">
							<select name="p_category">
								<option value="" selected>상품군을 선택하세요</option>
								<option value="">의류</option>
								<option value="">구두/신발</option>
								<option value="">가방</option>
								<option value="">패션잡화(모자/벨트/ 악세서리)</option>
								<option value="">가구</option>
								<option value="">영상가전</option>
								<option value="">가정용전기제품(냉장고/세탁기/식기세척기)</option>
								<option value="">계절가전(에어컨/온풍기)</option>
								<option value="">사무용기기(컴퓨터/노트북/프린터)</option>
								<option value="">광학기기(카메라/캠코더)</option>
								<option value="">휴대폰</option>
								<option value="">자동차용품</option>
								<option value="">화장품</option>
								<option value="">귀금속/보석,시계류</option>
							</select>
						</form></td>
				</tr>
				<tr>
					<th>제품소재</th>
					<td><span>섬유의 조성 또는 혼용률을 백분율로 표시, 기능성인 경우 성적서 또는 허가서</span>
						<form action="" name="" method="get">
							<input type="text" name="p_material" placeholder="상품페이지 참고"
								class="text_type4">
						</form></td>
					<td rowspan="8" class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="product_a_info_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="product_a_info_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>색상</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_color" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>치수</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_size" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>제조자</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_manu" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>세탁방법 및 취급시 주의사항</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_warn" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>제조연월</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_ymd" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>품질보증기준</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_guarantee" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>

				<tr>
					<th>A/S책임자와 전화번호</th>
					<td>
						<form action="" name="" method="get">
							<input type="text" name="p_pictel" placeholder="상품페이지 참고"
								class="text_type4">
						</form>
					</td>
				</tr>
			</table>
		</div>

		<div id="product_pAs">
			<h4>가격 및 재고</h4>
			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
			</div>
			<table>
				<tr>
					<th>판매가격</th>
					<td>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_price"
								class="text_type5">원
							</label>
						</form>
					</td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_price_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_price_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>시중가격</th>
					<td><span>입력하지 않으면 상품상세페이지에 출력하지 않습니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="market_price"
								class="text_type5">원
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="market_price_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="market_price_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>포인트 유형</th>
					<td><span>포인트 유형을 설정할 수 있습니다. 비율로 설정했을 경우 설정 기준금액의 %비율로
							포인트가 지급됩니다.</span>
						<form action="" name="" method="get">
							<select name="p_point_type">
								<option value="">설정금액</option>
								<option value="">판매가기준 설정비율</option>
								<option value="">구매가기준 설정비율</option>
							</select>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_point_type_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_point_type_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>포인트</th>
					<td><span>주문완료후 환경설정에서 설정한 주문완료 설정일 후 회원에게 부여하는 포인트입니다.<br>
							또, 포인트부여를 '아니오'로 설정한 경우 신용카드, 계좌이체로 주문하는 회원께는 부여하지 않습니다.
					</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_point"
								class="text_type5">점
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_point_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_point_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>추가옵션상품 포인트</th>
					<td><span>상품의 추가옵션상품 구매에 일괄적으로 지급하는 포인트입니다. 0으로 설정하시면
							구매포인트를 지급하지 않습니다.<br> 주문완료후 환경설정에서 설정한 주문완료 설정일 후 회원에게 부여하는
							포인트입니다.<br> 또, 포인트부여를 '아니오'로 설정한 경우 신용카드, 계좌이체로 주문하는 회원께는
							부여하지 않습니다.<br>
					</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_add_point"
								class="text_type5">점
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_add_point_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_add_point_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>상품품절</th>
					<td><span>잠시 판매를 중단하거나 재고가 없을 경우에 체크해 놓으면 품절상품으로 표시됩니다.</span>
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_soldout"
								class="yes_check">예</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_soldout_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_soldout_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>재입고SMS 알림</th>
					<td colspan="2"><span>상품이 품절인 경우에 체크해 놓으면 상품상세보기에서 고객이
							재입고SMS 알림을 신청할 수 있게 됩니다.</span>
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_refill"
								class="yes_check">예</label>
						</form></td>
				</tr>

				<tr>
					<th>재고수량</th>
					<td><span><strong>주문관리에서 상품별 상태 변경에 따라 자동으로
								재고를 가감합니다.</strong> 재고는 규격/색상별이 아닌, 상품별로만 관리됩니다. 재고수량을 0으로 설정하시면 품절상품으로
							표시됩니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_stock"
								class="text_type5" placeholder="9999">개
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_stock_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_stock_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>재고 통보수량</th>
					<td><span>상품의 재고가 통보수량보다 작을 때 쇼핑몰관리 메인화면의 재고현황에 재고부족
							상품으로 표시됩니다. 옵션이 있는 상품은 개별 옵션의 통보수량이 적용됩니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_stock_alarm"
								class="text_type5">개
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_stock_alarm_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_stock_alarm_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>최소구매수량</th>
					<td><span>상품 구매시 최소 구매 수량을 설정합니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_minbuy"
								class="text_type5">개
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_minbuy_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_minbuy_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>최대구매수량</th>
					<td><span>상품 구매시 최대 구매 수량을 설정합니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="p_maxbuy_check"
								class="text_type5">개
							</label>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_maxbuy_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_maxbuy_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>상품과세 유형</th>
					<td><span>상품의 과세유형(과세, 비과세)을 설정합니다.</span>
						<form action="" name="" method="get">
							<select name="p_tax_type">
								<option value="">과세</option>
								<option value="">비과세</option>
							</select>
						</form></td>
					<td class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox" name="p_tax_type_check"
								value="app_sort">분류적용</label> <label><input
								type="checkbox" name="p_tax_type_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr>
					<th>상품선택옵션</th>
					<td colspan="2">
						<div id="p_select_op_div">
							<table>
								<tr>
									<td colspan="2"><span>옵션항목은 콤마(,) 로 구분하여 여러개를 입력할 수
											있습니다.<br> 옷을 예로 들어 [옵션1 : 사이즈 , 옵션1 항목 : XXL,XL,L,M,S] ,
											[옵션2 : 색상 , 옵션2 항목 : 빨,파,노]<br> <strong>옵션명과
												옵션항목에 따옴표(', ")는 입력할 수 없습니다.</strong></td>
								</tr>
								<tr class="p_select_op_div_tr">
									<td>
										<form action="" name="" method="get">
											<label>옵션1</label><input type="text" name="p_select_op1"
												class="optext_type1">
										</form>

									</td>
									<td>
										<form action="" name="" method="get">
											<label>옵션 1항목 <input type="text"
												name="p_select_op1_1" class="optext_type2"></label>
										</form>
									</td>
								</tr>
								<tr class="p_select_op_div_tr">
									<td>
										<form action="" name="" method="get">
											<label>옵션2<input type="text" name="p_select_op2"
												class="optext_type1"></label>
										</form>
									</td>
									<td>

										<form action="" name="" method="get">
											<label>옵션 2항목 <input type="text"
												name="p_select_op2_2" class="optext_type2"></label>
										</form>
									</td>
								</tr>
								<tr class="p_select_op_div_tr">
									<td>
										<form action="" name="" method="get">
											<label>옵션3<input type="text" name="p_select_op3"
												class="optext_type1"></label>
										</form>
									</td>
									<td>

										<form action="" name="" method="get">
											<label>옵션 3항목 <input type="text"
												name="p_select_op3_3" class="optext_type2"></label>
										</form>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<button type="button" id="creat_op">옵션목록생성</button>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>

				<tr>
					<th>상품추가옵션</th>
					<td colspan="2">
						<div id="p_add_op">
							<table>
								<tr>
									<td colspan="3"><span>옵션항목은 콤마(,) 로 구분하여 여러개를 입력할 수
											있습니다. 스마트폰을 예로 들어 [추가1 : 추가구성상품 , 추가1 항목 : 액정보호필름,케이스,충전기]<br>
											옵션명과 옵션항목에 따옴표(', ")는 입력할 수 없습니다.
									</span></td>
								</tr>

								<tr>
									<td><form action="" name="" method="get">
											<label>추가1</label><input type="text" name="p_add_op1"
												class="optext_type1">
										</form></td>
									<td><form action="" name="" method="get">
											<label>추가 1항목 <input type="text" name="p_add_op1_1"
												class="optext_type2"></label>
										</form></td>
									<td>
										<button type="button">옵션추가</button>
									</td>
								</tr>
								<tr>
									<td colspan="3"><button type="button" id="creat_op">옵션목록생성</button></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>

		</div>
		<div id="product_delivery">
			<h4>배송비</h4>
			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
			</div>
			<p>
				쇼핑몰설정 > 배송비유형 설정보다 <span id="notice_red2">개별상품 배송비설정</span>이 우선
				적용됩니다.
			</p>

			<table>
				<tr>
					<th id="del_type">배송비 유형</th>
					<td><span>배송비 유형을 선택하면 자동으로 항목이 변환됩니다.</span>
						<form action="" name="" method="get">
							<select name="delevery_choice" id="delevery_choice">
								<option value="del_case1" selected>쇼핑몰 기본설정 사용</option>
								<option value="del_case2">무료배송</option>
								<option value="del_case3">조건부 무료배송</option>
								<option value="del_case4">유료배송</option>
								<option value="del_case5">수량별 부과</option>
							</select>
						</form></td>
					<td rowspan="4" class="sort_check">
						<form action="" name="" method="get">
							<label><input type="checkbox"
								name="product_delivery_check" value="app_sort">분류적용</label> <label><input
								type="checkbox" name="product_delivery_check" value="app_whole">전체적용</label>
						</form>
					</td>
				</tr>

				<tr id="delfee_pay">
					<th>배송비 결제</th>
					<td>
						<form action="" name="" method="get">
							<select name="delfee_pay_choice">
								<option value="delfee_pay_case1">사용자 선택</option>
								<option value="delfee_pay_case2">선불</option>
								<option value="delfee_pay_case3">착불</option>
							</select>
						</form>
					</td>
				</tr>

				<tr id="min_delfee">
					<th>기본배송비</th>
					<td><span>무료배송 이외의 설정에 적용되는 배송비 금액입니다.</span>
						<form action="" name="" method="get">
							<label> <input type="text" name="min_delfee"
								class="text_type5">원
							</label>
						</form></td>
				</tr>

				<tr id="delfee_detail">
					<th>배송비 상세조건</th>
					<td><span>상품의 주문 수량에 따라 배송비가 부과됩니다. 예를 들어 기본배송비가 3,000원
							수량을 3으로 설정했을 경우 상품의 주문수량이 5개이면 6,000원 배송비가 부과됩니다.</span>
						<form action="" name="" method="get">
							<label>주문수량 <input type="text" name="min_delfee"
								class="text_type5">마다 배송비 부과
							</label>
						</form></td>
				</tr>
			</table>
		</div>

		<div id="product_images">
			<h4>이미지</h4>
			<div class="select_tap">
				<ul>
					<a href="#product_sort"><li>상품분류</li></a>
					<a href="#product_b_info"><li>기본정보</li></a>
					<a href="#product_a_info"><li>요약정보</li></a>
					<a href="#product_pAs"><li>가격 및 재고</li></a>
					<a href="#product_delivery"><li>배송비</li></a>
					<a href="#product_images"><li>이미지</li></a>
				</ul>
				</div>
				
				<table>
					<tr>
						<th>이미지1</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images1">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지2</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images2">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지3</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images3">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지4</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images4">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지5</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images5">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지6</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images6">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지7</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images7">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지8</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images8">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지9</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images9">
							</form>
						</td>
					</tr>
					<tr>
						<th>이미지10</th>
						<td>
							<form action="" name="" method="get">
								<input type="file" name="product_images10">
							</form>
						</td>
					</tr>
				</table>
			</div>
	</section>
</body>
</html>