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
								<option value="20">원두</option>
								<option value="2010">&nbsp;커피백</option>
								<option value="201010">&nbsp;&nbsp;아이스 음료</option>
								<option value="20101010">&nbsp;&nbsp;&nbsp;인스턴트 커피</option>
								<option value="2010101001">&nbsp;&nbsp;&nbsp;&nbsp;티 음료</option>
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
					<th>상품명</th>
					<td colspan="2"><span>HTML 입력이 불가합니다.</span>
						<form action="" name="" method="post">
							<input type="text" name="product_name" id="product_name"
								class="text_type2">
						</form></td>
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
				</table>
			</div>
	</section>
</body>
</html>