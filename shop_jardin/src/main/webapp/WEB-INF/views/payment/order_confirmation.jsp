<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	


});
</script>
</head>
<body>

<!-- header 붙여넣기 -->
	<jsp:include page="../header.jsp"/>
	
	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li class="last">주문/결제</li>
			</ol>
		</div>
		
		<div id="outbox">		
			
			<!-- maxcontents -->
			<div id="maxcontents">
				<div id="mypage">
					<h2><strong>주문/결제</strong></h2>
					
					<!-- 주문 상품 -->
					<h3 class="dep">주문 제품 확인</h3>
					<div class="orderDivNm">
						<table summary="주문 제품 확인 게시판으로 상품명, 가격, 수량, 합계순으로 조회 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption>주문 제품 확인</caption>
							<colgroup>
							<col width="*" />
							<col width="16%" class="tnone" />
							<col width="14%" />
							<col width="16%" class="tw28"/>
							</colgroup>
							<thead>
								<th scope="col">상품명</th>
								<th scope="col" class="tnone">가격/포인트</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
							</thead>
							<tbody>
								<c:set var="total" value="0"/>
								<c:set var="point_total" value="0"/>
								<c:forEach var="order_list" items="${order_product }">
								<tr>
									<td class="left">
										<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="../product/p_detail?p_code=${order_list.p_code }&p_category=${order_list.p_category }">${order_list.p_name }</a>
											</li>
										</ul>
									</td>
									<td class="tnone">
										<fmt:formatNumber value="${order_list.p_price }" pattern="#,###,###,###"/> 원

										<!-- 회원일 시 -->
										<br/><span class="pointscore"><fmt:formatNumber value="${order_list.p_point }" pattern="#,###,###,###"/> Point</span>
										<!-- //회원일 시 -->
									</td>
									<td>${order_list.amount } 개</td>
									<td><fmt:formatNumber pattern="#,###,###,###">${order_list.p_price*order_list.amount }</fmt:formatNumber> 원</td>
								</tr>
								<c:set var="total" value="${total+order_list.p_price*order_list.amount }"/>
									
									<c:set var="point_total"><fmt:parseNumber type="number" integerOnly="true" value="${point_total+ (order_list.p_price/100)*order_list.amount}"/></c:set>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="poroductTotal">
						<ul>	
							<li>상품 합계금액 <strong><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber></strong> 원</li>
							<li>+ 배송비 <strong><fmt:formatNumber pattern="#,###,###,###">${payment.del_price}</fmt:formatNumber></strong> 원</li>
							<li>= 총 합계 <strong><fmt:formatNumber pattern="#,###,###,###">${total+order.del_price }</fmt:formatNumber></strong> 원</li>
						</ul>
					</div>
					<!-- //주문 상품 -->


			<!-- 총 주문금액 -->
					<div class="amount">

						<!-- 회원 일때 -->
						<h4 class="member">총 주문금액</h4>
						<!-- 회원 일때 -->
						<!-- 비회원 일때  <h4>총 주문금액</h4> //비회원 일때 -->

						<ul class="info">
							<li>
								<span class="title">상품 합계금액</span>
								<span class="won"><strong><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber></strong> 원</span>
							</li>
							<li>
								<span class="title">배송비</span>
								<span class="won"><strong><fmt:formatNumber pattern="#,###,###,###">${payment.del_price}</fmt:formatNumber></strong> 원</span>
							</li>

							<!-- 회원 일때만 -->
							<li>
								<span class="title">포인트 할인</span>
								<span class="won"><strong>- <fmt:formatNumber pattern="#,###,###,###">${payment.pay_point }</fmt:formatNumber></strong> P</span>
							</li>
							<li>
								<span class="title">쿠폰 할인</span>
								<span class="won"><strong>- <fmt:formatNumber pattern="#,###,###,###">${payment.cou_discount }</fmt:formatNumber></strong> 원</span>
							</li>
							<!-- //회원 일떄만 -->
						</ul>

						<ul class="total">
							<!-- 회원 일때만 -->
							<li class="mileage">(적립 포인트 <strong><fmt:formatNumber pattern="#,###,###,###">${payment.earn_point }</fmt:formatNumber></strong> Point) </li>
							<!-- //회원 일때만 -->

							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span><fmt:formatNumber pattern="#,###,###,###">${payment.total_price }</fmt:formatNumber></span> 원</li>
						</ul>
					</div>
			<!-- //총 주문금액 -->
					

			<!-- 주문자 정보확인 -->
					<h3 class="dep">주문자 정보</h3>
					<div class="checkDiv">
						<table summary="주문자 정보를 이름, 주소, 이메일, 휴대폰 번호, 전화번호 순으로 확인 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>주문자 정보확인</caption>
							<colgroup>
							<col width="17%" class="tw20" />
							<col width="*" />
							<col width="17%" class="tw20" />
							<col width="*" class="tw25" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>이름</span></th>
									<td>${member_info.name }</td>
									<th scope="row"><span>이메일</span></th>
									<td>${member_info.email }</td>
								</tr>

								<tr>
									<th scope="row" rowspan="2"><span>주소</span></th>
									<td rowspan="2">${member_info.post }<br/>${member_info.address1 }<br/>${member_info.address2 }</td>
									<th scope="row" rowspan="2"><span>휴대폰 <u>번호</u></span></th>
									<td rowspan="2">0${member_info.phone1 }-${member_info.phone2 }-${member_info.phone3 }</td>
								</tr>

							</tbody>
						</table>
					</div>
			<!-- //주문자 정보확인 -->


			<!-- 수취자 정보확인 -->
					<h3 class="dep">수취자 정보</h3>
					<div class="checkDiv">
						<table summary="수취자 정보를 이름, 주소, 이메일, 휴대폰 번호, 전화번호, 배송시 요구사항 순으로 확인 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>수취자 정보확인</caption>
							<colgroup>
							<col width="17%" class="tw20" />
							<col width="*" />
							<col width="17%" class="tw20" />
							<col width="*" class="tw25" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>이름</span></th>
									<td colspan="3">${buyer.name }</td>
								</tr>

								<tr>
									<th scope="row" ><span>주소</span></th>
									<td >${buyer.del_post }<br/>${buyer.del_address1 }<br/>${buyer.del_address2 }</td>
									<th scope="row" ><span>휴대폰 <u>번호</u></span></th>
									<td >0${buyer.del_phone1 }-${buyer.del_phone2 }-${buyer.del_phone3 }</td>
								</tr>
								<tr>
									<th scope="row"><span>배송시 <u>요구사항</u></span></th>
									<td colspan="3">${buyer.del_demand }</td>								
								</tr>
							</tbody>
						</table>
					</div>
			<!-- //주문자 정보확인 -->


			<!-- 결제금액 확인 -->
					<h3 class="dep">결제금액</h3>
					<div class="checkDiv">
						<table summary="결제되는 금액를 총 주문금액, 쿠폰할인, 배송비, 포인트사용, 총 결제금액 순으로 확인 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>결제금액확인</caption>
							<colgroup>
							<col width="17%" class="tw20" />
							<col width="*" />
							<col width="17%" class="tw20" />
							<col width="*" class="tw25" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>총 주문<u>금액</u></span></th>
									<td><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber>원</td>
									<th scope="row"><span>쿠폰 <u>할인</u></span></th>
									<td><fmt:formatNumber pattern="#,###,###,###">${payment.cou_discount }</fmt:formatNumber>원</td>
								</tr>

								<tr>
									<th scope="row"><span>배송비</span></th>
									<td><fmt:formatNumber pattern="#,###,###,###">${payment.del_price }</fmt:formatNumber> 원 (선불)</td>
									<th scope="row"><span>포인트 <u>사용</u></span></th>
									<td><fmt:formatNumber pattern="#,###,###,###">${payment.pay_point }</fmt:formatNumber> Point</td>
								</tr>

								<tr>
									<th scope="row"><span>총 결제<u>금액</u></span></th>
									<td colspan="3"><strong><fmt:formatNumber pattern="#,###,###,###">${payment.total_price }</fmt:formatNumber> 원</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
			<!-- //결제금액 확인 -->


			<!-- 주문 정보 확인 -->
					<h3 class="dep">주문 정보</h3>
					<div class="checkDiv">
						<table summary="주문정보를 주문번호, 결제수단, 주문일, 입금은행, 요구사항, 입금자 명 순으로 확인 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>주문 정보</caption>
							<colgroup>
							<col width="17%" class="tw20" />
							<col width="*" />
							<col width="17%" class="tw20" />
							<col width="*" class="tw25" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>주문번호</span></th>
									<td>${payment.pay_code }</td>
									<th scope="row"><span>결제수단</span></th>
									<td>${payment.pay_method }</td>
								</tr>

								<tr>
									<th scope="row"><span>주문일</span></th>
									<td><fmt:formatDate value="${payment.init_date }" pattern="yyyy/MM/dd"/> </td>
									<th scope="row"><span>입금은행</span></th>
									<c:if test="${payment.pay_method eq '무통장입금'}">
									<td>신한은행 1234-45-786135 (주)쟈뎅</td>
									</c:if>
									<c:if test="${payment.pay_method ne '무통장입금'}">
									<td></td>
									</c:if>
								</tr>

								<tr>
									<th scope="row"><span>요구사항</span></th>
									<td>${buyer.del_demand }</td>
									
									<th scope="row"><span>입금자 <u>명</u></span></th>
									<c:if test="${payment.pay_method eq '무통장입금'}">
									<td>홍길동</td>
									</c:if>
									<c:if test="${payment.pay_method ne '무통장입금'}">
									<td></td>
									</c:if>
								</tr>
							</tbody>
						</table>
					</div>
			<!-- //주문 정보 확인 -->


					<!-- Btn Area -->
					<div class="btnArea2">
						<a href="../main/main" class="nbtnbig iw0140">확인</a>
					</div>
					<!-- //Btn Area -->


				</div>
			</div>
			<!-- //maxcontents -->


		</div>
	</div>
	<!-- //container -->
	

<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>