<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.min.js"></script> -->
 <script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.easing.1.3.js"></script> -->
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.anchor.js"></script> -->
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<style type="text/css">
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
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
										
					</script>
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
								<form action="" method="post" name="product_infos" id="product_infos">
								<c:set var="total" value="0"/>
								<c:set var="point_total" value="0"/>
								<c:forEach var="fromcart" items="${from_cart }">
								<tr>
									<input type="hidden" name="cart_code" value="${fromcart.cart_code }">
									<td class="left">
										<p class="img"><img src="../images/img/sample_product.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="#">${fromcart.p_name }</a>
											</li>
										</ul>
									</td>
									<td class="tnone">
										<fmt:formatNumber value="${fromcart.p_price }" pattern="#,###,###,###"/> 원
										<!-- 회원일 시 (세션 넣을것)-->
										<c:if test="">
										<br/><span class="pointscore"><fmt:formatNumber value="${fromcart.p_point }" pattern="#,###,###,###"/>Point </span>
										</c:if>
										<!-- //회원일 시 -->
									</td>
									<td>${fromcart.amount } 개</td>
									<td><fmt:formatNumber pattern="#,###,###,###">${fromcart.p_price*fromcart.amount }</fmt:formatNumber>  원</td>
								</tr>
									<c:set var="total" value="${total+fromcart.p_price*fromcart.amount }"/>
									<c:set var="point_total" value="${point_total+ (fromcart.p_price/100)*fromcart.amount}"/>
								</c:forEach>
								</form>
							</tbody>
						</table>
					</div>
					<div class="poroductTotal">
						<ul>	
							<li>상품 합계금액 <strong><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber> </strong> 원</li>
							<c:set var="del_price" value="2500"/>
							<li>+ 배송비 
							<c:choose>
							<c:when test="${total>=30000 }">
									<c:set var="del_price" value="0"/>
							<strong>0
								</strong>
							</c:when>
							<c:otherwise>
								<strong>
							<fmt:formatNumber pattern="#,###,###,###">${del_price }</fmt:formatNumber></strong>
								</c:otherwise>					
							</c:choose>
							원
							 </li>
							<li>= 총 합계 <strong><fmt:formatNumber pattern="#,###,###,###">${total+del_price }</fmt:formatNumber></strong> 원</li>
						</ul>
					</div>
					<!-- //주문 상품 -->
					

			<!-- 주문자 주소 입력 -->
			<form name="mem_change" id="mem_change">
					<h3 class="diviLeft">주문자 주소 입력</h3>
					<div class="diviRight">
						<ul>
							<li>수정 내용을 회원정보에도 반영합니다.&nbsp;&nbsp;</li>
							<li onclick="change_member()" style="cursor: pointer;"><a >회원정보반영</a></li>
						</ul>
					</div>

					<div class="checkDiv">
						<table summary="주문자 주소를 입력할 수 있는 란으로 이름, 주소, 이메일, 휴대폰 번호, 전화번호 순으로 입력 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>주문자 주소 입력</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>이름</span></th>
									<td><input type="text" class="w134" value="${buyer_info.name }" name="name" id="name"/></td>
								</tr>

								<tr>
									<th scope="row"><span>주소</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="text" class="w134" value="${buyer_info.post }" name="post" id="post">
											</li>
											<li style="cursor: pointer;" name="openDaumZipAddress1" onclick="openDaumZipAddress1()"><a class="addressBtn"><span>우편번호 찾기</span></a></li>
											<li class="pt5"><input type="text" class="addressType2" value="${buyer_info.address1 }" name="address1" id="address1"></li>
											<li class="pt5"><input type="text" class="addressType2" value="${buyer_info.address2 }" name="address2" id="address2"></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>이메일</span></th>
									<td>
										<ul class="pta">
										<c:set var="email" value="${buyer_info.email }"/>
										<c:set var="email_front" value="${fn:substringBefore(email,'@') }"/>
										<c:set var="email_end" value="${fn:substringAfter(email,'@') }"/>
											<li><input type="text" class="w134" value="${email_front }" name="email1"/ id="email1"></li>
											<li><span class="valign">&nbsp;@&nbsp;</span></li>
											<li class="r10"><input type="text" class="w134" value="${email_end }" name="introduce" id="email2"/></li>
											<li>
												<select id="introduce" >
													<option value="#" selected="selected">직접입력</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="nate.com">nate.com</option>    
													<option value="yahoo.co.kr">yahoo.co.kr</option>    
													<option value="paran.com">paran.com</option>    
													<option value="empal.com">empal.com</option>    
													<option value="hotmail.com">hotmail.com</option>    
													<option value="korea.com">korea.com</option>    
													<option value="lycos.co.kr">lycos.co.kr</option>    
													<option value="dreamwiz.com">dreamwiz.com</option>    
													<option value="hanafos.com">hanafos.com</option>    
													<option value="chol.com">chol.com</option>    
													<option value="gmail.com">gmail.com</option>    
													<option value="empas.com">empas.com</option>
												</select>&nbsp;&nbsp;&nbsp;
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>휴대폰 번호</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="phone1" id="phone1">
													<option value="010" selected="selected">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" value="${buyer_info.phone2}" name="phone2" id="phone2"/> <span class="valign">-</span>&nbsp;</li>
											<li class="r10"><input type="text" class="w74" maxlength="4" value="${buyer_info.phone3}" name="phone3" id="phone3"/></li>
										</ul>
									</td>
								</tr>
								<c:if test="${get_order.nomem_check eq 'Y'}">
								<tr>
									<th scope="row"><span>비밀번호</span></th>
									<td><input type="password" class="w134" name="nom_password"/> *비회원 주문시 입력</td>
								</tr>
								</c:if>
							</tbody>
						</table>
					</div>
					</form>
			<!-- //주문자 주소 입력 -->


			<!-- 수취자 주소 입력 -->
					<h3 class="dep">
						수취자 주소 입력
						
						<input type="checkbox" id="infosame" name="infosame"/>
						<label for="infosame">회원정보와 동일</label>
					</h3>	
					<div class="checkDiv">
						<table summary="수취자 주소를 입력할 수 있는 란으로 이름, 주소, 이메일, 휴대폰 번호, 전화번호 순으로 입력 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>수취자 주소 입력</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<form action="save_delinfo" method="post" name="save_delinfo">
								<tr>
									<th scope="row"><span>이름</span></th>
									<td><input type="text" class="w134" name="del_name" id="del_name"/></td>
								</tr>

								<tr>
									<th scope="row"><span>주소</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="text" class="w134" name="del_post" id="del_post"/>
											</li>
											<li style="cursor: pointer; name="openDaumZipAddress2" onclick="openDaumZipAddress2()"><a class="addressBtn"><span>우편번호 찾기</span></a></li>
											<li class="pt5"><input type="text" class="addressType2" name="del_address1" id="del_address1"/></li>
											<li class="pt5"><input type="text" class="addressType2" name="del_address2" id="del_address2"/></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>휴대폰 번호</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="del_phone1" id="del_phone1">
													<option value="010" selected="selected">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>    
													<option value="019">019</option>    
												</select>
											</li>
											<li>&nbsp;<span class="valign">-</span>&nbsp;</li>
											<li><input type="text" class="w74" maxlength="4" name="del_phone2" id="del_phone2"/> <span class="valign">-</span>&nbsp;</li>
											<li class="r10"><input type="text" class="w74" maxlength="4" name="del_phone3" id="del_phone3"/></li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>배송시 <u>요구사항</u></span></th>
									<td><textarea class="demandtta" name="del_require"></textarea></td>
								</tr>
								</form>
							</tbody>
						</table>
					</div>
			<!-- //수취자 주소 입력 -->


			<!-- 쿠폰 및 포인트 사용 -->
					<h3 class="dep">쿠폰 및 포인트 사용</h3>
					<div class="checkDiv">
						<table summary="쿠폰 및 포인트를 입력 또는 확인 할 수 있는 란으로 총 주문금액, 배송비, 쿠폰할인, 포인트 사용, 총 결제금액 순으로 입력 또는 확인 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>쿠폰 및 포인트 사용</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>총 주문금액</span></th>
									<td> <fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber>  원</td>
								</tr>
								<tr>
									<th scope="row"><span>배송비</span></th>
									<td><fmt:formatNumber pattern="#,###,###,###">${del_price }</fmt:formatNumber> 원 (선불)</td>
									
								</tr>
								<tr>
									<th scope="row"><span>쿠폰 할인</span></th>
									<td>
										<ul class="pta">
											<li class="r10">
												<input type="text" class="w134" name="cou_input" id="cou_input" readonly="readonly"/>&nbsp;&nbsp;
												<input type="hidden" name="cou_code" id="cou_code">
												<span class="valign"><strong>원</strong></span>
											</li>
											<li class="r10"><span class="valign">( 보유 쿠폰 내역 : ${usable_coupon }장 )&nbsp;</span></li>
											<li onclick="get_coupon('product_infos')" class="nbtn" style="cursor: pointer;">쿠폰목록</li>
											
										</ul>
									</td>
								</tr>

								<!-- 회원 일시 -->
								<tr>
									<th scope="row"><span>포인트 사용</span></th>
									<td>
										<ul class="pta">
											<li class="r10">
												<input type="number" class="w134" id="point_input"/>&nbsp;&nbsp;
												<span class="valign"><strong>Point</strong></span>
											</li>
											<li>
												<span class="valign">( 사용 가능 포인트 : </span>
												<span class="orange" id="point_max">${usable_point }</span>
												<span class="valign"> Point)</span>
											</li>
										</ul>
									</td>
								</tr>
								<!-- //회원 일시 -->
								
								<tr>
									<th scope="row"><span>총 결제금액</span></th>
									<td>
										<ul class="pta">
											<li><span class="valign"><strong class="total_price"><fmt:formatNumber pattern="#,###,###,###">${total+del_price }</fmt:formatNumber></strong><strong>원</strong> 
											(총주문금액 <span><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber></span>원 + 
											배송비 <span>${del_price }</span>원
											<span id="point_wrap">- 포인트 <span id="point_1"></span></span>
											<span id="cou_wrap">- 쿠폰할인 <span id="cou_1"></span></span>
											= <spanclass="total_price"><fmt:formatNumber pattern="#,###,###,###">${total+del_price }</fmt:formatNumber></span>원)</li>
										</ul>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
			<!-- //쿠폰 및 포인트 사용 -->
			

			<!-- 총 주문금액 -->
					<div class="amount">

						<!-- 회원 일때 -->
						<h4 class="member">총 주문금액</h4>
						<input type="hidden" value="${total }">
						<input type="hidden" value="${del_price }">
						<!-- 회원 일때 -->
						<!-- 비회원 일때  <h4>총 주문금액</h4> //비회원 일때 -->

						<ul class="info">
							<li>
								<span class="title">상품 합계금액</span>
								<span class="won"><strong id="_total"><fmt:formatNumber pattern="#,###,###,###">${total }</fmt:formatNumber></strong> 원</span>
							</li>
							<li>
								<span class="title">배송비</span>
								<span class="won"><strong id="_del_price"><fmt:formatNumber pattern="#,###,###,###">${del_price }</fmt:formatNumber></strong> 원</span>
							</li>

							<!-- 회원 일때만 -->
							<li>
								<span class="title">포인트 할인</span>
								<span class="won"><strong id="point_2">0</strong> P</span>
							</li>
							<li>
								<span class="title">쿠폰 할인</span>
								<span class="won"><strong id="cou_2">0</strong> 원</span>
							</li>
							<!-- //회원 일떄만 -->
						</ul>

						<ul class="total">
							<!-- 회원 일때만 -->
							<li class="mileage">(적립 포인트 <strong><fmt:formatNumber pattern="#,###,###,###"><fmt:parseNumber integerOnly="true" value="${point_total }"/></fmt:formatNumber></strong> Point) </li>
							<!-- //회원 일때만 -->

							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span class="total_price"><fmt:formatNumber pattern="#,###,###,###">${total+del_price }</fmt:formatNumber></span> 원</li>
						</ul>
					</div>
			<!-- //총 주문금액 -->



			<!-- 결제수단 선택 -->
					<h3 class="dep">결제수단 선택</h3>
					<div class="checkDiv">
						<table summary="신용카드 결제, 실시간 계좌이체, 가상계좌, 가상계좌(에스크로), 무통장 입금 순으로 결제수단을 선택하실 수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>결제수단 선택</caption>
							<colgroup>
							<col width="22%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>결제수단</span></th>
									<td>
										<ul class="pta">
											<li>
												<input type="radio" id="method01" name="method" checked="checked" /><label for="method01">신용카드 결제</label>
											</li>
											<li>
												<input type="radio" id="method02" name="method" /><label for="method02">실시간 계좌이체</label>
											</li>
											<li>
												<input type="radio" id="method03" name="method" /><label for="method03">가상계좌</label>
											</li>
											<li>
												<input type="radio" id="method04" name="method" /><label for="method04">가상계좌(에스크로)</label>
											</li>
											<li>
												<input type="radio" id="method05" name="method" /><label for="method05">무통장 입금</label>
											</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				<!-- //결제수단 선택 -->

					<div class="disnone method01"><!-- 신용카드 -->
						<p class="orderalert"><strong>[신용카드]</strong> 온라인상에서 소유하신 신용카드를 통해, 전자결제를 진행합니다.</p>
					</div>
					<div class="disnone method02"><!-- 실시간 계좌이체 -->
						<p class="orderalert"><strong>[실시간 계좌이체]</strong> 주민번호, 계좌 정보, 공인인증서를 통해 실시간 계좌이체를 진행합니다.</p>
					</div>
					<div class="disnone method03"><!-- 가상계좌 -->
						<p class="orderalert"><strong>[가상계좌]</strong> 원하시는 은행으로 가상계좌를 발급해 드리며, 발급된 계좌로 구매대금을 직접 송금합니다.</p>
					</div>
					<div class="disnone method04"><!-- 가상계좌 에스크로 -->
						<p class="orderalert"><strong>[가상계좌 에스크로]</strong> 원하시는 은행으로 가상계좌를 발급해 드리며, 발급된 계좌로 구매대금을 직접 송금합니다.(에스크로 안전결제)</p>
					</div>

					<div class="disnone method05"><!-- 무통장 입금 -->
						<p class="orderalert"><strong>[무통장 입금]</strong> 쇼핑몰의 대표 계좌로 구매대금을 직접 송금합니다.</p>

						<div class="checkDiv">
							<table summary="신용카드 결제, 실시간 계좌이체, 가상계좌, 가상계좌(에스크로), 무통장 입금 순으로 결제수단을 선택하실 수 있습니다." class="checkTable" border="1" cellspacing="0">
								<caption>결제수단 선택</caption>
								<colgroup>
								<col width="22%" class="tw30" />
								<col width="*" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><span>입금은행</span></th>
										<td>
											<select name="bank">
												<option value="" >선택하세요.</option>
											</select>
										</td>
									</tr>
									<tr>
										<th scope="row"><span>입금자 명</span></th>
										<td><input type="text" class="w134" /></td>
									</tr>
									<tr>
										<th scope="row"><span>영수증 신청</span></th>
										<td>
											<select name="receiptChk">
												<option value="none">신청안함</option>
												<option value="individual">개인소득공제</option>
												<option value="corporate">사업자 지출증빙</option>
											</select>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<!-- 개인소득공제 -->
						<div class="receipt individual">
							<dl>
								<dt>발급방식</dt>
								<dd>
									<ul>
										<li><input type="radio" name="individual" id="phone" checked="checked" /><label for="phone">휴대폰</label></li>
										<li><input type="radio" name="individual" id="securitynumber" /><label for="securitynumber">주민등록번호</label></li>
										<li><input type="radio" name="individual" id="cashreceipts" /><label class="fn" for="cashreceipts">현금영수증카드</label></li>
									</ul>
								</dd>
							</dl>
							
							<ul class="inform phone"><!-- 휴대폰 -->
								<li class="title">이름</li>
								<li class="interval"><input type="text" class="w134" /></li>
								<li class="title cb">휴대폰</li>
								<li><input type="text" class="w134" /></li>
							</ul>

							<ul class="inform securitynumber"><!-- 주민등록번호 -->
								<li class="title">이름</li>
								<li class="interval"><input type="text" class="w134" /></li>
								<li class="title cb">주민등록번호</li>
								<li><input type="text" class="w134" /></li>
							</ul>

							<ul class="inform cashreceipts"><!-- 현금영수증카드 -->
								<li class="title">이름</li>
								<li class="interval"><input type="text" class="w134" /></li>
								<li class="title2 cb">현금영수증카드 번호</li>
								<li><input type="text" class="w134" /></li>
							</ul>

							<p class="txt">* 번호 입력시 하이픈(-)을 제외한 숫자만 입력하세요.</p>
						</div>
						<!-- //개인소득공제 -->

						<!-- 사업자 지출증빙 -->
						<div class="receipt corporate">
							<dl>
								<dt>발급방식</dt>
								<dd>
									<ul>
										<li><input type="radio" name="corporate" id="corporatenumber" checked="checked" /><label for="corporatenumber">사업자번호</label></li>
										<li><input type="radio" name="corporate" id="corporate_cash" /><label class="fn" for="corporate_cash">현금영수증카드</label></li>
									</ul>
								</dd>
							</dl>

							<ul class="inform corporatenumber"><!-- 사업자번호 -->
								<li class="title">이름</li>
								<li class="interval"><input type="text" class="w134" /></li>
								<li class="title2 cb">사업자등록 번호</li>
								<li><input type="text" class="w134" /></li>
							</ul>

							<ul class="inform corporate_cash"><!-- 현금영수증카드 -->
								<li class="title">이름</li>
								<li class="interval"><input type="text" class="w134" /></li>
								<li class="title2 cb">현금영수증카드 번호</li>
								<li><input type="text" class="w134" /></li>
							</ul>

							<p class="txt">* 번호 입력시 하이픈(-)을 제외한 숫자만 입력하세요.</p>
						</div>
						<!-- //사업자 지출증빙 -->

					</div>


						
				
					

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="orderCenter">
							<ul>
								<li><a href="#" class="nbtnbig iw0140">뒤로가기</a></li>
								<li><a href="#" class="sbtnMini iw0140">주문 / 결제</a></li>								
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
				


				</div>
			</div>
			<!-- //maxcontents -->


<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
<script type="text/javascript">
$(function(){
	// select, radio - display check

	// 1 Step Radio
	var firstchk = $("input:radio[name=method]:checked").attr("id");
	$("div." + firstchk).css("display","block");
	$("input:radio[name=method]").click(function(){
		var divchk = $(this).attr("id");		
		$(".disnone").css("display","none");
		$("div." + divchk).css("display","block");
	});
	
	// 2 Step 영수증 Select
	var firstselect = $("select[name=receiptChk] option:selected").attr("value");
	$("div." + firstselect).css("display","block");
	$("select[name=bank]").css("width","125px");
	$("select[name=receiptChk]").css("width","112px");
	$("select[name=receiptChk]").change(function() {
        $(".receipt").css("display","none");
        if($(this).val() == "none"){ $(".receipt").css("display","none"); }
        else if($(this).val() == "individual"){ $(".individual").css("display","block"); }
		else{ $(".corporate").css("display","block"); }

		var firstindi = $("input:radio[name=individual]:checked").attr("id");
		var firstcorp = $("input:radio[name=corporate]:checked").attr("id");
		$("ul." + firstindi).css("display","block");		
		$("ul." + firstcorp).css("display","block");
    });
	
	// 3-1 Step 발급방식 - 개인
	var firstindi = $("input:radio[name=individual]:checked").attr("id");
	$("ul." + firstindi).css("display","block");
	$("input:radio[name=individual]").click(function(){
		var divchk = $(this).attr("id");
		$(".inform").css("display","none");
		$("ul." + divchk).css("display","block");
	});

	// 3-2 Step 발급방식 - 사업자
	var firstcorp = $("input:radio[name=corporate]:checked").attr("id");
	$("ul." + firstcorp).css("display","block");
	$("input:radio[name=corporate]").click(function(){
		var divchk = $(this).attr("id");
		$(".inform").css("display","none");
		$("ul." + divchk).css("display","block");
	});





	
	
	
	//이메일 도메인 변경
	$("#introduce").on("change",function() {
		alert("dkdk");
		$("#email2").val($(this).val());		
	});
	
	//회원정보 수취자로 넘기기
	$("#infosame").click(function() {
		if($(this).is(":checked")){
			$("#del_name").val($("#name").val());
			$("#del_post").val($("#post").val());
			$("#del_address1").val($("#address1").val());
			$("#del_address2").val($("#address2").val());
			$("#del_email1").val($("#email1").val());
			$("#del_email2").val($("#email2").val());
			var phone1 = $("#phone1 option:selected").val();
			
			$("#del_phone1").val($("#phone1 option:selected").val()).change();
			$("#del_phone2").val($("#phone2").val());
			$("#del_phone3").val($("#phone3").val());
			
		}
		else{
			$("#del_name").val("");
			$("#del_post").val("");
			$("#del_address1").val("");
			$("#del_address2").val("");
			$("#del_email1").val("");
			$("#del_email2").val("");
			$("#del_phone1").val("");
			$("#del_phone2").val("");
			$("#del_phone3").val("");
		}
	});
	
	$("#point_wrap").hide();
	$("#cou_wrap").hide();

	//포인트 입력 반영
	$("#point_input").on("input", function() {
		var point_max = $("#point_max").text();
		 
		if(this.value!=null){
		if(Number(this.value)>Number(point_max)){
			$(this).val(point_max);
		}
		$("#point_1").text(comma(this.value));
		$("#point_wrap").show();	
		$("#point_2").text(comma(this.value));
		}
		
		get_total();
	});
	
	/* //쿠폰입력반영
	$("#cou_input").on("input",function() {
		if(this.value!=null){
		$("#cou_1").text(comma(this.value));
		$("#cou_wrap").show();	
		$("#cou_2").text(comma(this.value));
		}
		
		get_total();
	}); */
		
	
	
});

//우편번호찾기 위
function openDaumZipAddress1() {
	new daum.Postcode({
		oncomplete: function(data) {
			jQuery("#post").val(data.zonecode);	
			jQuery("#address1").val(data.address);
		}
	}).open();
}

//우편번호찾기 아래
function openDaumZipAddress2() {
	new daum.Postcode({
		oncomplete: function(data) {
			jQuery("#del_post").val(data.zonecode);	
			jQuery("#del_address1").val(data.address);
		}
	}).open();
}


//회원정보에 반영
function change_member() {
	var member = $("form[name=mem_change]").serialize();
	$.ajax({
		type:"post",
		url:"change_member",
		data:member,
		dataType:"json",
		success: function () {
			alert("정보가 반영되었습니다.");
		},
		error: function () {
			alert("반영에 실패하였습니다.");
		}
	})
	
}

//결제예정금액 구하기
function get_total() {
	var total=uncomma($("#_total").text());
	var del_price=uncomma($("#_del_price").text());
	var point=uncomma($("#point_2").text());
	
	$("#cou_1").text(comma($("#cou_input").val())+"원");
	$("#cou_wrap").show();	
	$("#cou_2").text(comma($("#cou_input").val()));
	var coupon=uncomma($("#cou_input").val());
	var tttt=comma(Number(total)+Number(del_price)-Number(point)-Number(coupon));
	
	$(".total_price").text(comma(Number(total)+Number(del_price)-Number(point)-Number(coupon)));
	
	
	
}

function get_coupon(name) {
	var popupX = (window.screen.width / 2) - (1000 / 2);
	var popupY= (window.screen.height /2) - (700 / 2);
	
	frm = document.getElementById(name);
	
	window.open('','viewer', 'width=1000, height=700,left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	frm.action = "coupon_list";
	frm.target = "viewer";
	frm.method = "post";
	frm.submit();
}



/*  function test() {
	var get_code= new Array;
	$("input[name='cart_code']").each(function () {
		get_code.push(this.value);
	});
	alert(get_code);
	//var w = window.open("about:blank","_blank","width=600, height=700, top=0,left=0,scrollbars=no");
	var cart_code = JSON.stringify({cart_code:get_code});
	$.ajax({
		type: "POST",
		url:"get_list",
		data:cart_code,
		contentType:"application/json;charset=UTF-8",
		dataType:"json",
		success: function (data) {
			
			
		},
		error: function (request, status, error) {
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
	$(".nbtn").fancybox({
		'autoDimensions'    : false,
		'showCloseButton'	: false,
		'width' : couponCheck,
		'padding' : 0,
		'type'			: 'iframe',
		'href':'coupon_list',
		'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height());
			$('#fancybox-wrap').css('top','1100px');
			$('html,body').animate({ scrollTop: 1100 }, 500);
			});
		}
	}); 
	
} */

//layer popup
var winWidth = $(window).width();
if(winWidth > 767){
	var layerCheck = 540;
	var couponCheck = 760;
}else{
	var layerCheck = 320;
	var couponCheck = 320;
}






//콤마찍기
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
//콤마풀기
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}



	
/* document.form1.email2.value =document.form1.lstMail[document.form1.lstMail.selectedIndex].value; */

</script>


		</div>
	</div>
	<!-- //container -->


<!-- footer 붙여넣기 -->
	<jsp:include page="../footer.jsp"/>

</body>
</html>